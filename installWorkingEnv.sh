
set -e # To exit the script as soon as one of the commands failed
# requirements: vim, tmux
if which vim tmux zsh | grep "not" > /dev/null; then echo "need to install vim tmux zsh"; sudo apt-get install vim tmux zsh; fi

#######
# tmux
#######
if ls ~/.tmux.conf >/dev/null; then cp ~/.tmux.conf ~/.tmux.conf_backup; echo ".tmux.conf_backup was backed up"; fi
echo config/tmux.conf > ~/.tmux.conf
echo "NOTE that the new .tmux.conf changed the tmux bind key to <alt>m !!!"
tmux source-file ~/.tmux.conf  # reload .tmux.conf file


#######
# oh-my-zsh
#######
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
if ls ~/.zshrc >/dev/null; then cp ~/.zshrc ~/.zshrc_backup; echo ".zshrc_backup was backed up"; fi
echo config/zshrc > ~/.zshrc
cp config/kphoen.zsh-theme ~/.oh-my-zsh/themes/


#######
# vim
#######
# vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
if ls ~/.vimrc >/dev/null; then cp ~/.vimrc ~/.vimrc_backup; echo ".vimrc_backup was backed up"; fi
echo config/vimrc > ~/.vimrc
vim +source %
vim +PluginInstall



