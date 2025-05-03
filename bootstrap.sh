#!/bin/bash
set -e

echo "[+] Updating and upgrading system..."
sudo apt update && sudo apt upgrade -y

echo "[+] Installing tools..."
sudo apt install -y vim git curl htop ufw

echo "[+] Adding user 'david'..."
sudo adduser --disabled-password --gecos "" david
sudo usermod -aG sudo david

echo "[+] Configuring UFW firewall..."
sudo ufw allow OpenSSH
sudo ufw --force enable

echo "[+] Done. Server bootstrapped!"
