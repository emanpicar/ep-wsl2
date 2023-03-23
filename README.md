#### Steps
- Install WSL2
    - wsl2 windows setup
    - docker-desktop and kubernetes setup
- Install language version managers
   - gvm
      - `bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)`
      - `source /home/epicar/.gvm/scripts/gvm`
   - nvm
      - `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`
   - pyenv
      - `brew update`
      - `brew install pyenv`
- Install direnv
   - `curl -sfL https://direnv.net/install.sh | bash`

#### Optional setup
 - VSCode multiple environment setup
 - VSCode plugins
    - [REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)
    - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
    - [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks)



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion