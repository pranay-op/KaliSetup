#!/bin/bash

# Update and upgrade the system
echo "[*] Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Install essential tools and apps
echo "[*] Installing essential tools and apps..."
sudo apt install -y \
  nmap \
  nikto \
  metasploit-framework \
  burpsuite \
  sqlmap \
  john \
  hydra \
  aircrack-ng \
  wireshark \
  exploitdb \
  beef-xss \
  netcat \
  curl \
  wget \
  git 
  
# Install essential User Required tools and apps
echo "[*] Installing User essential tools and apps..."
sudo apt-get install -y \
  terminator \
  gedit \
  gobuster \
  beef-xss \
  zaproxy \
  sublist3r

 
# Install additional tools
echo "[*] Installing additional tools..."
sudo apt install -y \
  enum4linux \
  smbclient \
  rpcclient \
  nbtscan \
  dirb \
  dnsenum \
  dnsrecon \
  wfuzz \
 
# Install Python and pip
echo "[*] Installing Python and pip..."
sudo apt install -y python3 python3-pip

# Install Python tools and libraries
echo "[*] Installing Python tools and libraries..."
pip3 install \
  requests \
  bs4 \
  lxml \
  scrapy \
  droopescan \
  git+https://github.com/GerbenJavado/LinkFinder.git \
  git+https://github.com/s0md3v/XSStrike.git \
  git+https://github.com/sqlmapproject/sqlmap.git

# Clone useful repositories
echo "[*] Cloning useful repositories..."
git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/PowerShellMafia/PowerSploit.git
git clone https://github.com/carlospolop/PEASS-ng.git
git clone https://github.com/ffuf/ffuf.git

# Set up Metasploit
echo "[*] Setting up Metasploit..."
sudo msfdb init

# Install Docker (optional, for running additional tools)
echo "[*] Installing Docker..."
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Pull useful Docker images
echo "[*] Pulling useful Docker images..."
sudo docker pull kalilinux/kali-linux-docker
sudo docker pull owasp/zap2docker-stable

# Clone and set up ars0n-framework
echo "[*] Cloning and setting up ars0n-framework..."
git clone https://github.com/R-s0n/ars0n-framework.git
cd ars0n-framework
chmod +x install.sh
./install.sh
npm install
npm audit fix --force
cd ..

# Clone SecLists repository
echo "[*] Cloning SecLists repository..."
git clone https://github.com/danielmiessler/SecLists.git /usr/share/seclists

# Final system update and cleanup
echo "[*] Final system update and cleanup..."
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y
sudo apt clean

echo "[*] All tools and apps have been installed successfully!"

