# dotfiles
Mac conf 

```
git clone git@github.com:jechav/dotfiles.git ~/.dotfiles

ln -s ~/.dotfiles/.vimrc  ~/.vimrc
ln -s ~/.dotfiles/coc-settings.json ~/.vim/
ln -s ~/.dotfiles/.zshrc  ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/
ln -s ~/.dotfiles/oh-my-zsh/kphoen2.zsh-theme ~/.oh-my-zsh/custom/themes
```

## Basic 

```
sudo apt-get install git wget 
sudo apt-get install build-essential cmake libssl-dev
sudo apt-get install python-dev
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```
#### Git ssh key
```
ssh-keygen -t rsa -b 4096 -C "joche.echavezm@gmail.com" 
ssh-add ~/.ssh/id_rsa

# Downloads and installs xclip. If you don't have `apt-get`, you might need to use another installer (like `yum`)
$ sudo apt-get install xclip

# Copies the contents of the id_rsa.pub file to your clipboard
$ xclip -sel clip < ~/.ssh/id_rsa.pub
```

## Console and Vim 

### ZSH
```
sudo apt-get install zsh
chsh -s /bin/zsh
```
*installing oh-my-zsh*
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
> restart to take effect

### Vim
```
brew install vim
```

> Open vim and run :PlugInstall


