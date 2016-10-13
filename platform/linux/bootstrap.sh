export PATH=/usr/local/bin:$PATH

if [ -x `which dnf` ]; then
  sudo dnf install -y ctags elinks sed git gitflow mariadb mc openssl tmux zsh wget curl tree
fi
