# Clone dotfiles and set up symlinks
echo "[+] Cloning dotfiles for user david..."
sudo -u david git clone https://github.com/HackHunter8/dotfiles.git /home/david/dotfiles

echo "[+] Symlinking dotfiles..."
sudo -u david ln -sf /home/david/dotfiles/.bashrc /home/david/.bashrc
# Add more symlinks as needed, like .vimrc, .bash_aliases, etc.
sudo -u david ln -sf /home/david/dotfiles/.vimrc /home/david/.vimrc

