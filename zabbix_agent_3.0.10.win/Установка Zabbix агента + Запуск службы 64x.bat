cd C:\zabbix_agents_3.0.10.win\bin\win64
zabbix_agentd.exe --config C:\zabbix_agents_3.0.10.win\conf\zabbix_agentd.conf --install
sc start "Zabbix Agent"
netsh firewall add portopening TCP 10050 system