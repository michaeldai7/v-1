#!/bin/sh
sudo apt install openvpn dante-server
sudo cp -r files/* /
# sudo echo '* * * * * root curl "http://api.dynu.com/nic/update?hostname=dd1.freeddns.org&username=ddxs&password=847e2206b8530d1c927811ec4ae4cb8b"' >> /etc/crontab
# sudo echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDnyuoIh0bmf+u9jsun9Jt3/t5bE/w4yrT6AWuDtm9FQMqI2457H/mQMtF8iB0xX6xC7lPpvx2AImmHrF3LG9rls5qzLZLifTP1EHHukWjFDFbygs+Io32p5yejTHGH5iWLvAB854DK2BCIebVakX9in4FCSJ7Ov2xJjgSEtvSrK5VKyh/J8UOI0P3MWfaHYAg8oPCnZB9UVCehkMEQF0Nyk6CEuBKJNQMXZyI9osat/U5dUIvuXmBR3Zz8YK29BDciH1eulC1qmzpWQHPrtD3jDcpJ6HE+7laz8fy35TOgdc02ZFjt0yYF3qodcv0sKVeEnvUXVwIUxSV3qCW3hDcj' > /root/.ssh/authorized_keys
sudo /etc/init.d/openvpn restart
sudo /etc/init.d/danted restart
sudo /etc/init.d/cron restart

# while :
# do
# 	sleep 60
# 	echo '.'
# done
