SET HUBHOST=localhost
SET NODEHOST=localhost
IF NOT [%1] == [] SET HUBHOST=%1
IF NOT [%1] == [] SET NODEHOST=%1
start java -jar selenium-server-standalone-2.53.1.jar -role webdriver -hub http://%HUBHOST%:4444/grid/register -hubHost %HUBHOST% -host %NODEHOST% -port 5555 -browser "browserName=firefox"
Exit