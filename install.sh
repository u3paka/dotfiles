

sudo sed -i -e 's%http://.*.ubuntu.com%http://ftp.jaist.ac.jp/pub/Linux%g' /etc/apt/sources.list

sudo apt update -y
sudo apt upgrade -y

sudo apt-add-repository ppa:fish-shell/release-3
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb

sudo apt update -y

# terminal env and tools
sudo apt install git vim zsh byobu p7zip-full -y

# zsh prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

sudo apt install -y build-essential inotify-tools

# pip3
sudo apt install python3-pip -y

# elixir
sudo apt install esl-erlang elixir -y

# nodejs
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node

# mecab
sudo apt install mecab libmecab-dev mecab-ipadic-utf8 -y

# project dir
mkdir ~/projects
cd projects

# Elixir setup
mix local.hex
mix archive.install hex phx_new 1.4.2

