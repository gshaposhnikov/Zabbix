## zabbix_agent_3.0.10.win

Протестирован на дистрибутивах Windows XP, Windows 7.
Поддерживаемые ос Windows XP и выше.


### Описание

Агент для ос семейства Windows, обеспечивающий полный мониторинг компьютера.



### Установка
Для установки агента zabbix_agent_3.0.10.win:

1. Скопируйте папку zabbix_agent_3.0.10.win в корень диска С.

2. Откройте папку conf.

3. Отредактируйте файл zabbix_agentd.conf

LogFile=c:\zabbix_agentd.log (директория хранения лог файла, можно не изменять).

LogFileSize=10	(Количество строк лог файла).

Server=ip	(ip адрес компьютера, на который будет установлен zabbix agent).

Hostname=Test (Имя компьютера, которое мы укажем на сервере zabbix, раздел host).

Сохраните конфигурационный файл zabbix_agentd.conf

4.Запустите пакетный файл в зависимости от разрядности вашей ОС: Установка Zabbix агента + Запуск службы 32x или Установка Zabbix агента + Запуск службы 64x. 

Логика работы bat сценария:

cd C:\zabbix_agents_3.0.10.win\bin\win32 (выполняется переход в каталог win32).

zabbix_agentd.exe --config C:\zabbix_agents_3.0.10.win\conf\zabbix_agentd.conf --install (выполняется установка агента).

sc start "Zabbix Agent" (запускается служба "Zabbix Agent").

netsh firewall add portopening TCP 10050 system (открывается порт TCP 10050).


Zabbix_agent установлен. 
 
