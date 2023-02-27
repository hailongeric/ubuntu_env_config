#!/bin/bash

# fdu network auth script
./auth.sh

sudo apt-get install -y git tmux zsh
#mv .tmux.conf ~/
git config --global http.proxy http://10.176.65.41:7890
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Enter your pc name: "
read pc_name
sed -i 's/%(?:%{$fg_bold\[green\]%}/%(?:%{$fg_bold\[green\]%}'"${pc_name}"'/g' ~/.oh-my-zsh/themes/robbyrussell.zsh-theme 
