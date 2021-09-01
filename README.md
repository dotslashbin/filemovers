# FileMovers
Bash scripts that moves files ( log files in this case ) to a different location.


### Crontab configuration

    30 * * * * /mnt/nas/scripts/filemovers/mover.sh /usr/share/tomcat/logs/ /mnt/nas/WAS-log-archive/tomcat 21
    30 * * * * /mnt/nas/scripts/filemovers/mover.sh /data/solrindex/ /mnt/nas/WAS-log-archive/solr 3
    30 * * * * /mnt/nas/scripts/filemovers/deleter.sh /mnt/nas/WAS-log-archive/tomcat/
    30 * * * * /mnt/nas/scripts/filemovers/deleter.sh /mnt/nas/WAS-log-archive/solr/