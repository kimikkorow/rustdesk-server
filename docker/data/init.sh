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

apt install cargo -y

git clone https://github.com/rustdesk/rustdesk-server.git
cd ./rustdesk-server

cargo build --release

mkdir ./target/release/files
mv ./target/release/hbbr ./target/release/files
mv ./target/release/hbbs ./target/release/files

echo "打包"
tar -zcvf rustdesk-data.tar.gz ./target/release/files
