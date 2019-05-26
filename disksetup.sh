#!/bin/bash
USER_NAME=$1
mkdir /home/$USER_NAME
sed -e "s/\${USERNAME}/${USER_NAME}/" /tmp/fstab > /etc/fstab
parted /dev/sdb mklabel msdos
parted /dev/sdb mkpart primary 0% 100%
mkfs.ext4 /dev/sdb1
mount -t ext4 /dev/sdb1 /home/${USER_NAME}
useradd -M $USER_NAME
echo "$USER_NAME:$USER_NAME"|chpasswd
cp /etc/skel/.b* /home/$USER_NAME/
chown -R $USER_NAME:$USER_NAME /home/$USER_NAME
cp /tmp/.xinitrc /home/$USER_NAME/.xinitrc
