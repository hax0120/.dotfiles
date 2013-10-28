umask 022

#Prompt
export PS1="[ \t ] \u:\w$"

#aliases
alias ls='ls -CF'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias goinit='cd ~/.dotfiles/.emacs.d/inits'        
        
#Setting
export PAGER='/usr/bin/lv -c'
export EDITER='/usr/bin/vim'
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad