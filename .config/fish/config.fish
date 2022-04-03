set PATH /usr/local/bin $PATH
set fish_greeting

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias i3conf='vim ~/.config/i3/config'
alias python='python3'
alias config='/usr/bin/git --git-dir=/home/midas/dotfiles/ --work-tree=/home/midas'
alias update_config='/usr/bin/git --git-dir=/home/midas/dotfiles/ --work-tree=/home/midas add /home/midas/.bashrc /home/midas/scripts/ /home/midas/.config/alacritty /home/midas/.config/fish/ /home/midas/.config/i3/ /home/midas/.config/polybar/ /home/midas/.config/texstudio'
