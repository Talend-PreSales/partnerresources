#!/bin/bash

echo "--- ####### ---"
echo "TENANT_NAMEREGION     =$TENANT_NAMEREGION"
echo "TENANT_DOMAIN         =$TENANT_DOMAIN"
echo "QAA_URL               =$QAA_URL"
echo "QAA_TOKEN_HEADER_NAME =$QAA_TOKEN_HEADER_NAME"
echo "QAA_EXEC_TOKEN        =$QAA_EXEC_TOKEN"
echo "OWNER_EMAIL           =$OWNER_EMAIL"
echo "MACHINEID             =$MACHINEID"
echo "--- ####### ---"
echo ""

if [ -f /app/key.json ]; then  # If KEY already exists (this will handle container restarts)

    echo "--- Gateway already configured for tenant: $TENANT_NAMEREGION.$TENANT_DOMAIN"
    echo "--- This is your EXISTING KEY:"
    echo "---"
    cat /app/key.json
    echo "---"

    /opt/qlik/gateway/movement/bin/repagent stop
    
else
    echo "--- Configuring Gateway for tenant: $TENANT_NAMEREGION.$TENANT_DOMAIN ..."
    if [ -z ${TENANT_NAMEREGION}  ] || [ -z ${TENANT_DOMAIN} ]; then
        echo "--- Either TENANT_NAMEREGION or TENANT_DOMAIN are NOT defined!!! Cannot config this Gateway!! "
    else 
        
        /opt/qlik/gateway/movement/bin/repagent agentctl qcs set_config --tenant_url $TENANT_NAMEREGION.$TENANT_DOMAIN
        /opt/qlik/gateway/movement/bin/repagent agentctl qcs get_registration > /app/key.json

        echo "--- This is your NEW KEY:"
        echo "---"
        cat /app/key.json
        echo "---" 
        
    fi
fi


if [ -f /app/key.json ]; then
    if [ ! -f /app/qaa-exec.json ]; then
        echo "--- This Gateway has NOT been added to the tenant yet. Trying this now..."
        if [ -z ${QAA_URL}  ] || [ -z ${OWNER_EMAIL} ] || [ -z ${TENANT_NAMEREGION} ]; then
            echo "--- Either QAA_URL, OWNER_EMAIL or TENANT_NAMEREGION are NOT defined!!! Register Data Gateway manually to the tenant!"
        else
            registration_key=$(jq -r . /app/key.json)  
            jq -n \
                --arg userId "$OWNER_EMAIL" \
                --arg machineId "$MACHINEID" \
                --arg tenant_name_region "$TENANT_NAMEREGION" \
                --argjson registration_key "$registration_key" '$ARGS.named' > /opt/qlik/gateway/movement/data/logs/postData.json
            
            echo "--- Calling QAA Automation To register this Gateway: $QAA_URL"
            echo "--- With payload: "
            cat /opt/qlik/gateway/movement/data/logs/postData.json

            curl -X POST -H "Content-Type: application/json" -H "$QAA_TOKEN_HEADER_NAME: $QAA_EXEC_TOKEN" -d @/opt/qlik/gateway/movement/data/logs/postData.json $QAA_URL > /app/qaa-exec.json

            cat /app/qaa-exec.json
        fi
    else 
        echo "--- This KEY had been added to the tenant already. This was the response when QAA was executed: "
        cat /app/qaa-exec.json    
    fi

    echo "--- Starting up the Gateway now!"
    /opt/qlik/gateway/movement/bin/repagent start && tail -F /opt/qlik/gateway/movement/data/logs/repagent.log

else
    echo "--- No gateway key found. Die and do nothing."  
fi
