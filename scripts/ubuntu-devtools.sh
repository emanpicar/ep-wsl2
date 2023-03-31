#!/bin/bash

echo "#######################################"
echo "#######################################"
echo "##### Installing devtools packages ####"
echo "##### bash ./ubuntu-devtools.sh    ####"
echo "#######################################"
echo "#######################################"

function initialize {
    # upgrade all of system software as well as their dependencies to the latest version
    sudo apt-get update

    sudo apt-get install bison -y
    sudo apt-get install gcc -y
    sudo apt-get install make neofetch -y

    # dependencies required for pyenv
    sudo apt-get install build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl -y
    sudo apt-get install libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev -y
}

function install_go {
    wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
    sudo rm -rf /usr/local/go
    sudo tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
    rm go1.20.2.linux-amd64.tar.gz

    if [[ -z "$(command -v go)" ]]; then
        echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
    fi
}

function install_python {
    

    sudo apt-get install python3.6 -y
}

function install_gvm {
    rm -rf ~/.gvm
    bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
    source ~/.gvm/scripts/gvm
    gvm version
}

function install_nvm {
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
}

function install_pyenv {
    rm -rf ~/.pyenv
    curl https://pyenv.run | bash

    if [[ -z $PYENV_ROOT ]]; then
echo '
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
' >> ~/.bashrc
    fi

}

function install_direnv {
    if [[ -z "$(command -v direnv)" ]]; then
        echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
    fi

    curl -sfL https://direnv.net/install.sh | bash
    
    mkdir -p ~/.config/direnv
    cp scripts/direnvrc ~/.config/direnv/direnvrc
}

function print_info {
    echo ""
    echo "#######################################"
    echo "#######################################"
    echo "##### Installing devtools packages ####"
    echo "#####           COMPLETED          ####"
    echo "#######################################"
    echo "#######################################"
    echo ""

    echo "shell is restarted for the PATH changes to take effect"
    echo "restart your terminal if you have trust issues ^^"
    exec "$SHELL"
}

initialize
install_go
install_python
install_gvm
install_nvm
install_pyenv
install_direnv
print_info