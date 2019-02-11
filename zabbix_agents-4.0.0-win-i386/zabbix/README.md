## zabbix_agents-4.0.0-win-i386

Протестирован на дистрибутивах Windows 7.
Поддерживаемые ос Windows XP и выше.


### Описание

Агент для ос семейства Windows, обеспечивающий полный мониторинг компьютера, сервисов и сетевого оборудования.



### Установка
Для установки агента zabbix 4.0.10.win-i386:

1. Скопируйте папку zabbix в корень диска С.

2. Отредактируйте файл zabbix_agentd.win.conf

LogFile=c:\zabbix\zabbix_agentd.log (директория хранения лог файла, можно не изменять).

LogFileSize=10	(Количество строк лог файла).

Server=ip	(ip адрес сервера, который будет мониторить zabbix agent).

ServerActive=ip ( ip адрес сервера, хранения архива. Как правило тот же).  

Hostname=win7 (Имя компьютера, которое мы укажем на сервере zabbix, раздел host).

Сохраните конфигурационный файл zabbix_agentd.win.conf

4.Запустите пакетный файл : Полная установка Zabbix агента 4.0 32x. 

Логика работы bat сценария:

c:/zabbix/zabbix_agentd.exe --config c:/zabbix/zabbix_agentd.win.conf --install (установка агента, создание лог файла в каталоге c:\zabbix\zabbix_agentd.log).

sc start "Zabbix Agent" (запускается служба "Zabbix Agent").

netsh firewall add portopening TCP 10050 system (открывается порт TCP 10050).


Zabbix_agent 4.0 установлен. 
 
