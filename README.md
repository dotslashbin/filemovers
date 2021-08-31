# FileMovers
Bash scripts that moves files ( log files in this case ) to a different location.


### Crontab configuration

    30 * * * * ./mover.sh /usr/share/tomcat/logs /mnt/nas/WAS-logs/tomcat >/dev/null 2>&1
