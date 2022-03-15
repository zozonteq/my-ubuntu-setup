#setup packages
sudo apt update 
sudo apt upgrade
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt install git python python3 neovim vim gcc g++ nmap fish hashcat default-jdk 

#Create test projects
cd 
mkdir repo && cd repo
mkdir js-test cpp-test c-test python-test java-test
cd js-test && touch main.js && cd ..
cd cpp-test && touch main.cpp run.sh && "g++ main.cpp&&./a.out">>run.sh && cd ..
cd c-test && touch main.c run.sh && "gcc main.c && ./a.out" >> run.sh && cd ..
touch python-test/main.py
touch java-test/main.java

#setup neovim
cd ~/.config/
mkdir nvim && cd nvim 
touch init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cd

