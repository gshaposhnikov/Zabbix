c:/zabbix/zabbix_agentd.exe --config c:/zabbix/zabbix_agentd.win.conf --install
sc start "Zabbix Agent"
netsh firewall add portopening TCP 10050 system