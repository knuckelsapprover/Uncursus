#!/bin/bash
if [ "$EUID" -ne 0 ]; then
echo Please run this script as root.
else
echo -e "\e[31mWelcome to Uncursus Install Script V1.0.3 (Beta) By @Yaya4_4 fork by knuckles Follow Me On Twitter Pls.\e[0m"
echo "WARNING : THIS IS IN BETA A9-A11 IS ONLY SUPPORTED IM NOT RESPONSABLE IF ANYTHING GOES WRONG"
echo "If you have found any bug's pls create an issues in github ;)"
echo "Enjoy :)"
echo "Starting..."
echo "Installing Dependency's For The Installer"
apt update
apt install unzip -y
apt install com.bingner.plutil -y
apt install zsh -y
apt install curl -y
echo "Downloading And Executing Offical Procurus Script From Coolstar"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Yaya48/Uncursus/new/procursus-deploy-u0.sh)"
echo "Downloading And Installing Offical Procurus Deb"
rm -rf /User/Documents/Uncursus
mkdir /User/Documents/Uncursus
apt update
apt install wget -y --allow-unauthenticated
wget https://github.com/Yaya48/Uncursus/blob/new/DebProcurusSystem.zip?raw=true --directory-prefix=/User/Documents/Uncursus/
unzip /User/Documents/Uncursus/DebProcurusSystem.zip?raw=true -d /User/Documents/Uncursus/
dpkg -i /User/Documents/Uncursus/DebProcurusSystem/*.deb
echo "Done. Create Custom Directory For Download All Files Requied. Path (/User/Documents/)."
mkdir /User/Documents/Uncursus/u0
wget https://github.com/Yaya48/Uncursus/blob/new/DebPatch.zip?raw=true --directory-prefix=/User/Documents/Uncursus/
unzip /User/Documents/Uncursus/DebPatch.zip?raw\=true -d /User/Documents/Uncursus/DebPatch
rm -rf /usr/bin/cynject
wget https://apt.bingner.com/debs/1443.00/com.ex.substitute_0.1.14_iphoneos-arm.deb --directory-prefix=/User/Documents/Uncursus/u0
wget https://apt.bingner.com/debs/1443.00/com.saurik.substrate.safemode_0.9.6003_iphoneos-arm.deb --directory-prefix=/User/Documents/Uncursus/u0
echo "Done. Installing necessary debs for patch."
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/coreutils.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/xz-utils.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/coreutils-bin_8.31-1_all.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/libssl.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/lzma.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/ncurses5-libs_5.9-1_all.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/xz_5.2.4-4_all.deb
dpkg -i --force-all /User/Documents/Uncursus/u0/*.deb
echo "Done. Running Firmware Configuration (./firmware.sh)"
/usr/libexec/firmware
echo "BootStrap Installions Done. The Installer Clean The Installions"
rm -rf /User/Documents/Uncursus/
echo "All Done."
killall SpringBoard
fi
