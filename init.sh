#!/bin/bash 
sudo su
yum update -y
sudo yum openssh-server -y
sudo yum install ssh -y
mkdir -p /data
chmod 701 /data
groupadd sftp_users

useradd -g sftp_users -d /upload -s /sbin/nologin sftp_users

mkdir -p /data/sftp_users/upload

cat << EOF >> /etc/ssh/sshd_config

Match Group sftp_users
ChrootDirectory /data/%u
ForceCommand internal-sftp
PasswordAuthentication yes
EOF
chown -R root:sftp_users /data/sftp_users
chown -R sftp_users:sftp_users /data/sftp_users/upload
systemctl restart sshd
