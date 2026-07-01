#!/bin/bash
USER=rhel

echo "Adding wheel" > /root/post-run.log
usermod -aG wheel rhel

echo "Setup File Access Policy lab" > /tmp/progress.log

chmod 666 /tmp/progress.log

# Pull cowsay from a release tarball
curl -L -O https://github.com/Code-Hex/Neo-cowsay/releases/download/v2.0.4/cowsay_2.0.4_Linux_x86_64.tar.gz
mv cowsay_2.0.4_Linux_x86_64.tar.gz /home/rhel/
chown rhel:rhel /home/rhel/cowsay_2.0.4_Linux_x86_64.tar.gz

# Allow ansible to run runtime-automation
echo "allow perm=any auid=1000 trust=1 : dir=/home/rhel/.ansible/" > /etc/fapolicyd/rules.d/50-ansible.rules

echo "Lab setup complete" >> /tmp/progress.log
