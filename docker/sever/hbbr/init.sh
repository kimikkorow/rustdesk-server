echo "更新系统包"
apt update 
apt upgrade -y

echo "设置时区"
apt install -y tzdata
ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo Asia/Shanghai >/etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

echo "安装依赖"
apt install sudo nano git wget curl -y
