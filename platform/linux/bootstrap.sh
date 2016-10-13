export PATH=/usr/local/bin:$PATH

if [ -x `which dnf` ]; then
  echo "Installing common packages..."
  sudo dnf install -y \
    automake \
    ctags \
    curl \
    elinks \
    hub \
    gcc \
    gcc-c++ \
    git \
    gitflow \
    kernel-devel \
    make \
    mariadb \
    mariadb-server \
    mc \
    openssl \
    sed \
    tmux \
    tree \
    wget \
    zsh
fi

# Install Input Mono font
echo "Installing Input Mono font..."
if [ ! -d $HOME/.fonts/InputMono ]; then
  if [ ! -d $HOME/.fonts ]; then
    mkdir -p $HOME/.fonts
  fi
  rm -Rf /tmp/InputMono && mkdir -p /tmp/InputMono && curl -s -L -o /tmp/InputMono/InputMono.zip "http://input.fontbureau.com/build/?fontSelection=fourStyleFamily&regular=InputMono-Regular&italic=InputMono-Italic&bold=InputMono-Medium&boldItalic=InputMono-MediumItalic&a=0&g=0&i=0&l=0&zero=0&asterisk=0&braces=0&preset=default&line-height=1.3&accept=I+do&email=" && cd /tmp/InputMono && unzip -o -j InputMono.zip *.ttf && rm InputMono.zip && cd $HOME/ && mv /tmp/InputMono $HOME/.fonts
  echo "Font installed."
else
  echo "Font already installed."
fi
