#!/bin/bash
#PUT me at /usr/local/share/zabbix/alertscripts
smsto="$1"
smstext="$2 $3"
LOGIN=putyourloginhere
MD5PASS=putyourmd5passhere
#this is how you cat get yourmd5pass
#echo -n youpass|md5
curl -v --data "text=${smstext}" http://gate.smsaero.ru/send/?user=$LOGIN\&password=$MD5PASS\&to=${smsto}\&from=INFORM
