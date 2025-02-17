#!/bin/bash


#cd "$(dirname "$0")"
# *INSTALLER PATH WITH INSTALLER NAME
# e.g.:
# InstallerName="./DgSecure-8.8.0.48-linux-x64-installer.run" 
# InstallerName="/PathToInstaller/DgSecure-8.8.0.48-linux-x64-installer.run"
cd  /home/ec2-user/Dgcontroller-8.0
echo "Current Directory: $(pwd)"

sudo chmod 755 DgSecure-8.8.0.59-linux-x64-installer.run

InstallerName="./DgSecure-8.8.0.59-linux-x64-installer.run" 

# ----------INSTALLATION DIRECTORY----------
# *INSTALLATION PATH
InstallPath="/opt/Dataguise"

# Temporary Directory
# Temporary directory where installer will copy, write and execute files.
sys_temp_dir="/tmp"


# ----------DGSECURE SERVER CONFIGURATION----------
# *DGSECURE SERVER PORT, DEFAULT=10181
DgSecureServerPort="10181"

# *IF USER WANT TO DELETE EXISTING ENTRY OF SSL FROM CACERT, 1 = YES 0 = NO
blnDeleteExistingEntryFromCacert=0
# *IF USER WANT TO ENTER JAVA CACERT PATH, 1 = YES 0 = NO
selectCaCertPath=0
# Java cacert path
javaCaCertPath=""
# Java cacert password
caCertPassword="changeit"


# ----------DGSECURE SERVER SSL SELECTION----------
# *IF USER WANT TO INSTALL SSL OPTION, 1 = YES 0 = NO
ssloption="1"
# Type of SSL Certificate Self-Signed = signed, Trusted = trusted
SSLCertificateType="signed"
# *DGSECURE SERVER SSL PORT DEFAULT 10182
DgSecureServerSSLPort="10182" 

# ----------SSL CERTIFICATE----------
# *FULL NAME
FullName="dataguise"
# *ALIAS NAME
AliasName="dataguise"
Unit=""
Organization=""
Locality=""
State=""
# *COUNTRY CODE TWO CHARS ONLY
CountryCode="US"
# *PASSWORD ATLEAST 6 CHARS
SslKeystorePassword="dataguise"

# ---------- Trusted SSL CERTIFICATE----------
# Keystore File
SslKeystoreFile="/path/to/keystorefile/keystorefile.jks"
# Alias Name
TrustedAliasName="dataguise"
# *PASSWORD ATLEAST 6 CHARS
SslTrustedKeystorePassword="dataguise"
# *PASSWORD ATLEAST 6 CHARS
SslKeyPassword="dataguise"


# ----------DATABASE TYPE SELECTION----------
# DATABASE TYPE PostgreSQL, MySQL, Oracle OR SqlServer
DatabaseType="PostgreSQL"
# Default Overwrite Option For Existing Database, 1 = YES 0 = NO
# This option can be used to set default behaviour of the question where installer ask to overwrite the existing database, this option will be applicable for MySQL, Oracle, SqlServer and Preinstalled PostgreSQL.
ExistingDbOverwrite=0

# DATABASE MAPPING OPTION CAN BE ONE OF new (CREATE NEW DATABASE/SCHEMAS), migrate (UPGRADE/APPLY MIGRATIONS), keep (USE EXISTING DATABASE/SCHEMAS AS-IS WITHOUT MIGRATING), OR recreate (RESET/RECREATE IN PLACE - DISCARD EXISTING DATA))
# DEFAULT = new
dbaction="new"

# ----------PostgreSQL CONFIGURATION PREINSTALLED----------
# *POSTGRESQL HOST DEFAULT localhost
PostgreSQLHost="localhost"
# *POSTGRESQL PORT DEFAULT=5432
PostgreSQLPort="5432"
# *POSTGRESQL USER
PostgreSQLUser="postgres"
# *POSTGRESQL PASSWORD
PostgreSQLPassword="dataguise"
# POSTGRESQL DEFAULT DATABASE
PostgreSQLDefaultDatabase=""
# ENABLE SSL, 1 = YES 0 = NO
pgssloption="0"
# Postgres Trusted Store Location
postgresTrustedStoreLocation="/opt/postgreskeystore"
# Postgres Trusted Store Password
postgresTrustedStorePassword="dataguise"

# DATABASE OBJECTS NAME FOR DBNAME, CONTROLLER, CONTROL, HDFSINFO AND DASHBOARD
# DEFAULT VALUES ARE: dg, dgcontroller, dgcontrol, dghdfsinfo, dgstar
postgresqldbname="dg"
postgrescontrollerschemaname="dgcontroller"
postgrescontrolschemaname="dgcontrol"
postgreshdfsinfoschemaname="dghdfsinfo"
postgresdashboardschemaname="dgstar"
postgresdgreportschemaname="dgreport"

# ----------MySQL CONFIGURATION----------
# *MySQL PORT DEFAULT 3306
MySQLPort="3306"
# *MySQL HOST
MySQLHost="localhost"
# *MySQL USER NAME
MySQLUser="root"
# *MySQL PASSWORD
MySQLPassword="root"
# ENABLE SSL, 1 = YES 0 = NO
mysqlsslconfig="0"

# DATABASE OBJECTS NAME FOR CONTROLLER, CONTROL, HDFSINFO AND DASHBOARD
# DEFAULT VALUES ARE: dgcontroller, dgcontrol, dghdfsinfo, dgstar
mysqlcontrollerschemaname="dgcontroller"
mysqlcontrolschemaname="dgcontrol"
mysqlhdfsinfoschemaname="dghdfsinfo"
mysqldashboardschemaname="dgstar"
mysqldgreportschemaname="dgreport"

# ----------Oracle CONFIGURATION----------
# CONNECT USING basic OR tns
oraconntype="tns"
# ** ORACLE TNS CONFIGURATIONS **
# ORACLE USER FOR TNS CONNECTION
orausertns="system"
# ORACLE PASSWORD FOR TNS CONNECTION
orapassword="dataguise"
# ORACLE CONNECT IDENTIFIER
oraconnectidentifier="orcl"
# TNS ADMIN PATH
tns_admin_path=""

# ** ORACLE BASIC CONFIGURATIONS **
# ORACLE USER FOR BASIC CONNECTION
orauserbasic="system"
# ORACLE PASSWORD FOR BASIC CONNECTION
orapasswordbasic="dataguise"
# ORACLE HOST NAME 
orahostname="localhost"
# ORACLE PORT DEFAULT 1521
oraport="1521"
# ORACLE IDENTIFIER SID OR SERVICE NAME ENTER orasid FOR SID OR oraservicename FOR SERVICE NAME
oraidentifiertype="orasid"
# SID/SERVICE NAME
oraidentifier="orcl"


# DATABASE OBJECTS NAME FOR CONTROLLER, CONTROL, HDFSINFO AND DASHBOARD
# DEFAULT VALUES ARE: DGCONTROLLER, DGCONTROL, DGHDFSINFO, DGSTAR
oraclecontrollerschemaname="DGCONTROLLER"
oraclecontrolschemaname="DGCONTROL"
oraclehdfsinfoschemaname="DGHDFSINFO"
oracledashboardschemaname="DGSTAR"
oracledgreportschemaname="DGREPORT"

# METADATA PASSWORDS FOR CONTROLLER, CONTROL, HDFSINFO AND DASHBOARD
orametadatapasswordcontroller="dataguise1"
orametadatapasswordcontrol="dataguise2"
orametadatapasswordhdfsinfo="dataguise3"
orametadatapassworddashboard="dataguise4"
orametadatapassworddgreport="dataguise5"


# ----------SQL Server CONFIGURATION----------
# SQL SERVER NAME
sqlservername="localhost"
# CONNECT USING Instance OR Port
sqlserverinstanceorport="Port"
# SQLSERVERINSTANCEORPORTTEXT ENTER INSTANCE NAME OR PORT NUMBER AS PER YOUR SELECTION (Eg. SQLEXPRESS or 1433)
sqlserverinstanceorporttext="1433"
# SQL SERVER AUTH TYPE USING sqlserverwinauth OR sqlserverauth
# sqlserverwinauth is not applicable for Linux
sqlserverauthtype="sqlserverauth"
# SQL SERVER MASTER DATABASE
sqlservermasterdb="master"
# SQLSERVERUSERNAME DEFAULT sa
sqlserverusername="sa"
# SQLSERVER PASSWORD
sqlserverpassword="dataguise"

# DATABASE OBJECTS NAME FOR DBNAME, CONTROLLER, CONTROL, HDFSINFO AND DASHBOARD
# DEFAULT VALUES ARE: dg, dgcontroller, dgcontrol, dghdfsinfo, dgstar
sqlserverdbname="dg"
sqlservercontrollerschemaname="dgcontroller"
sqlservercontrolschemaname="dgcontrol"
sqlserverhdfsinfoschemaname="dghdfsinfo"
sqlserverdashboardschemaname="dgstar"
sqlserverdgreportschemaname="dgreport"


# KEYSTORE OPTION FOR METADATA CRYPTO, OPTION CAN BE EITHER SystemGeneratedKey OR CustomKey
MetaCryptoKeystoreOption="SystemGeneratedKey"
# *Metadata Keystore File
MetaCryptoKeystoreFile="/Path/To/MetadataKeystoreFile.jceks"
# *Keystore Password
MetaCryptoKeystorePass="dataguise"
# *Keystore Type OPTION CAN BE jceks
MetaCryptoKeystoreType="jceks"
# *Key Alias
MetaCryptoKeyAlias="dataguise"
# *Key Password
MetaCryptoKeyPass="dataguise"


# SERVICE REGISTRY CONFIGURATION FOR CONTROLLER
# IF USER WANT TO ENTER SERVICE REGISTRY INFORMATION, 1 = YES 0 = NO
selectServiceRegistry="0"
# DISCOVERY SERVER HOST, DEFAULT=localhost
dgServiceRegistryHostname="localhost"
# DISCOVERY SERVER PORT, DEFAULT=10201
dgServiceRegistryPortNum="10201"


# ----------CONTROLLER ID----------
# CONTROLLER ID WILL BE GENERATED WHEN USER INVOKE THE SETUP
# LEAVE IT BLANK IF IT HAS TO BE GENERATED BY INSTALLER
controllerid=""

# -----------------------------END OF VARIABLE DECLARATION-----------------------------


# CHECKING FILE, IF FILE DOES NOT EXIST THEN GIVE MESSAGE
if [ ! -e "$InstallerName" ]; then
	echo "INSTALLER $InstallerName DOES NOT EXIST"
	sleep 3
	exit 0
fi

# CHANGE PERMISSION OF THE INSTALLER
chmod 755 "$InstallerName"

# EXECUTING INSTALLER IN TEXT MODE (AVAILABLE OPTIONS ARE: text, unattended)
"$InstallerName" --mode unattended --prefix "$InstallPath" --sys_temp_dir "$sys_temp_dir" --blnDeleteExistingEntryFromCacert "$blnDeleteExistingEntryFromCacert" --selectCaCertPath "$selectCaCertPath" --javaCaCertPath "$javaCaCertPath" --caCertPassword "$caCertPassword" --sslopt "$ssloption" --sslcertificate "$SSLCertificateType" --tomcatportssl "$DgSecureServerSSLPort" --CN "$FullName" --alias "$AliasName" --OU "$Unit" --O "$Organization" --L "$Locality" --ST "$State" --C "$CountryCode" --storepass "$SslKeystorePassword" --keystoreFile "$SslKeystoreFile" --trustedalias "$TrustedAliasName" --trustedstorepass "$SslTrustedKeystorePassword" --keypass "$SslKeyPassword" --databasetype "$DatabaseType" --existingDbOverwrite "$ExistingDbOverwrite" --dbaction "$dbaction" --hostpostgresql "$PostgreSQLHost" --pgport "$PostgreSQLPort" --pgusername "$PostgreSQLUser" --pgpassword "$PostgreSQLPassword" --pgdefaultdatabase "$PostgreSQLDefaultDatabase" --pgsslopt "$pgssloption" --postgresTrustedStoreLocation "$postgresTrustedStoreLocation" --postgresTrustedStorePassword "$postgresTrustedStorePassword" --postgresqldbname "$postgresqldbname" --postgrescontrollerschemaname "$postgrescontrollerschemaname" --postgrescontrolschemaname "$postgrescontrolschemaname" --postgreshdfsinfoschemaname "$postgreshdfsinfoschemaname" --postgresdashboardschemaname "$postgresdashboardschemaname" --postgresdgreportschemaname "$postgresdgreportschemaname" --mysqlport "$MySQLPort" --mysqlhost "$MySQLHost" --mysqlusername "$MySQLUser" --mysqlpassword "$MySQLPassword" --mysqlsslconfig "$mysqlsslconfig" --mysqlcontrollerschemaname "$mysqlcontrollerschemaname" --mysqlcontrolschemaname "$mysqlcontrolschemaname" --mysqlhdfsinfoschemaname "$mysqlhdfsinfoschemaname" --mysqldashboardschemaname "$mysqldashboardschemaname" --mysqldgreportschemaname "$mysqldgreportschemaname" --oraconntype "$oraconntype" --orausertns "$orausertns" --orapassword "$orapassword" --oraconnectidentifier "$oraconnectidentifier" --tns_admin_path "$tns_admin_path" --orauserbasic "$orauserbasic" --orapasswordbasic "$orapasswordbasic" --orahostname "$orahostname" --oraport "$oraport" --oraidentifiertype "$oraidentifiertype" --oraidentifier "$oraidentifier" --oraclecontrollerschemaname "$oraclecontrollerschemaname" --oraclecontrolschemaname "$oraclecontrolschemaname" --oraclehdfsinfoschemaname "$oraclehdfsinfoschemaname" --oracledashboardschemaname "$oracledashboardschemaname" --oracledgreportschemaname "$oracledgreportschemaname" --orametadatapasswordcontroller "$orametadatapasswordcontroller" --orametadatapasswordcontrol "$orametadatapasswordcontrol" --orametadatapasswordhdfsinfo "$orametadatapasswordhdfsinfo" --orametadatapassworddashboard "$orametadatapassworddashboard" --orametadatapassworddgreport "$orametadatapassworddgreport" --sqlservername "$sqlservername" --sqlserverinstanceorport "$sqlserverinstanceorport" --sqlserverinstanceorporttext "$sqlserverinstanceorporttext" --sqlserverauthtype "$sqlserverauthtype" --sqlservermasterdb "$sqlservermasterdb" --sqlserverusername "$sqlserverusername" --sqlserverpassword "$sqlserverpassword" --sqlserverdbname "$sqlserverdbname" --sqlservercontrollerschemaname "$sqlservercontrollerschemaname" --sqlservercontrolschemaname "$sqlservercontrolschemaname" --sqlserverhdfsinfoschemaname "$sqlserverhdfsinfoschemaname" --sqlserverdashboardschemaname "$sqlserverdashboardschemaname" --sqlserverdgreportschemaname "$sqlserverdgreportschemaname" --MetaCryptoKeystoreOption "$MetaCryptoKeystoreOption" --MetaCryptoKeystoreFile "$MetaCryptoKeystoreFile" --MetaCryptoKeystorePass "$MetaCryptoKeystorePass" --MetaCryptoKeystoreType "$MetaCryptoKeystoreType" --MetaCryptoKeyAlias "$MetaCryptoKeyAlias" --MetaCryptoKeyPass "$MetaCryptoKeyPass" --tomcatport "$DgSecureServerPort" --selectServiceRegistry "$selectServiceRegistry" --dgServiceRegistryHostname "$dgServiceRegistryHostname" --dgServiceRegistryPortNum "$dgServiceRegistryPortNum" --controllerid "$controllerid"

sleep 3
