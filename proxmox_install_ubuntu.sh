echo "welcome to luxxy's proxmox install script"
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "make sure this is run in root (sudo su)"

apt-get update -y && apt-get upgrade -y
apt-get install qemu-guest-agent
systemctl start qemu-guest-agent
echo "you may have to reboot"
passwd
echo "Setting the ssh config"
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

echo "restarting the ssh"
sudo service ssh restart

echo "all done thanks for using this script"

echo "you can now exit the ssh and login as root user with the password you put"


