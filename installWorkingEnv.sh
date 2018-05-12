#!/bin/bash -vx

# requirements: vim, tmux, zsh
# before run this script, install pkgs:
    # sudo apt-get install vim tmux zsh
# after run this script, set zsh as default:
    # sudo chsh --shell=/bin/zsh mengqi


#######
# vim
#######
# vundle
if [ -d ~/.vim/bundle/vundle ]; then cp -r ~/.vim/bundle/vundle ~/.vim/bundle/backup_vundle; rm -rf ~/.vim/bundle/vundle; echo "~/.vim/bundle/backup_vundle was backed up"; fi
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
if [ -f ~/.vimrc ]; then cp ~/.vimrc ~/.backup_vimrc; echo ".backup_vimrc was stored"; fi
cp config/vimrc ~/.vimrc
vim +PluginInstall +qall


#######
# tmux
#######
if [ -f ~/.tmux.conf ]; then cp ~/.tmux.conf ~/.backup_tmux.conf; echo ".backup_tmux.conf was stored"; fi
cp config/tmux.conf ~/.tmux.conf
echo "NOTE that the new .tmux.conf changed the tmux bind key to <alt>m !!!"
tmux source-file ~/.tmux.conf


#######
# oh-my-zsh
#######
if [ -d ~/.oh-my-zsh ]; then cp -r ~/.oh-my-zsh ~/.backup_oh-my-zsh; rm -rf ~/.oh-my-zsh; echo ".backup_oh-my-zsh was stored"; fi
bash config/install_oh_my_zsh.sh
if [ -f ~/.zshrc ]; then cp ~/.zshrc ~/.backup_zshrc; echo ".backup_zshrc was stored"; fi
cp config/zshrc ~/.zshrc
cp config/kphoen.zsh-theme ~/.oh-my-zsh/themes/
if [ -f ~/.bashrc ]; then cp ~/.bashrc ~/.backup_bashrc; echo ".backup_bashrc was stored"; fi
sed -i 's/PS1/: #PS1/g' ~/.bashrc  # remove all the commands related to PS1
zsh
