#!/bin/bash


DOWNLOAD_URL=https://github.com/qlik-download/hdd-replication-agent-artifacts/releases/download/v2024.5.54/qlik-data-gateway-data-movement-2024.5-54.x86_64.rpm

wget -O ./qlik-data-gateway-data-movement.rpm --no-verbose $DOWNLOAD_URL

# Install python for install script
# Install the gateway
QLIK_DMG_NO_SYSTEMD=yes QLIK_CUSTOMER_AGREEMENT_ACCEPT=yes rpm -i /app/qlik-data-gateway-data-movement.rpm

rm -fr /app/qlik-data-gateway-data-movement.rpm

echo "Installing ODBC drivers"
cd /opt/qlik/gateway/movement/drivers/bin
./install mysql -a
./install postgres -a
./install snowflake -a
./install databricks -a
./install sqlserver -a
./install gbq -a
./install oracle -a

dnf clean packages
yum clean all


   
