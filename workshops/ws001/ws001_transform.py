import uuid

# Get list length from one of the array fields
list_length = input["Phone_LIST"]

# Generate a unique row identifier
gid = str(uuid.uuid4())[:8]

# Initiate a list to hold the output
output = []

# Iterate through each customer element
for x in range(0, len(list_length)):
    # Create an output set for the record
    record = {}

    # Map fields
    record["Lastname"] = input["Lastname"]
    record["Firstname"] = input["Firstname"]
    record["Phone"] = input["Phone_LIST"][x]
    record["Country"] = input["Country_LIST"][x]
    record["ZipCode"] = input["ZipCode_LIST"][x]
    record["Loyalty"] = input["Loyalty_LIST"][x]
    record["Date"] = input["Date_LIST"][x]
    record["HouseholdDescription"] = input["HouseholdDescription_LIST"][x]

    # Create internal fields for Data Stewardship
    record["TDS_GID"] = gid
    record["TDS_MASTER"] = "false"
    record["IS_DUPLICATE"] = "true" if len(list_length) > 1 else "false"
    record["TDS_SOURCE"] = "Support" if input["Loyalty_LIST"][x] != "" else "CRM"

    # Append record to output
    output.append(record)