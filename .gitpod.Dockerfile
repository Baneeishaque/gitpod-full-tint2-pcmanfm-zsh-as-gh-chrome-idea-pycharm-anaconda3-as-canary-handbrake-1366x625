FROM baneeishaque/gitpod-full-tint2-pcmanfm-zsh-as-gh-chrome-idea-pycharm-anaconda3-2020-11-as-canary-1366x625

RUN cd $HOME \
 && sudo add-apt-repository ppa:stebbins/handbrake-releases -y | tee -a /tmp/apt.log \
 && sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     handbrake-gtk handbrake-cli | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*
