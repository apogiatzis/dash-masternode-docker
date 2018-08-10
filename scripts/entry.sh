printf 'mypass\nmypass\n' | adduser masternode
printf 'Andreas Poyiatzis' | usermod -aG sudo masternode
yes | (apt update && apt upgrade && apt install ufw python virtualenv git unzip pv wget)

# Firewall Config
# ==============

# ufw allow ssh/tcp
# ufw limit ssh/tcp
# ufw allow 9999/tcp
# ufw logging on
# ufw enable

# Swap partition extend swap space
# ================================
# fallocate -l 4G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && nano /etc/fstab
# echo "/swapfile none swap sw 0 0"  >> /etc/fstab

# Download and install dash
# =========================
cd ~
wget https://github.com/dashpay/dash/releases/download/v0.12.3.2/dashcore-0.12.3.2-x86_64-linux-gnu.tar.gz

mkdir .dashcore
tar xfz dashcore-0.12.3.2-x86_64-linux-gnu.tar.gz
cp dashcore-0.12.3/bin/dashd .dashcore/
cp dashcore-0.12.3/bin/dash-cli .dashcore/
chmod 777 .dashcore/dash*