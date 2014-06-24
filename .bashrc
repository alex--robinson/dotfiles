#hello dad
export TERM=xterm-256color
#lenstool
#some global variables needed to be exported to get this chap to run...
#export LENSTOOL_DIR=/usr/local/lenstool_v6.7.1/
#export PATH=$PATH:$LENSTOOL_DIR/src:$LENSTOOL_DIR/utils:$LENSTOOL_DIR/perl
#export LD_LIBRARY_PATH=/usr/local/lib/

#IRAF?
#export PATH=$PATH:$/iraf/

# TMUX
#if which tmux 2>&1 >/dev/null; then
#    #if not inside a tmux session, and if no session is started, start a new session
#    test -z "$TMUX" && (tmux attach || tmux new-session)
#fi

#colors for use in TTY
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0222222" #black
    echo -en "\e]P8222222" #darkgrey
    echo -en "\e]P19f6767" #darkred
    echo -en "\e]P99f6767" #red
    echo -en "\e]P292ac68" #darkgreen
    echo -en "\e]PA92ac68" #green
    echo -en "\e]P3d0d293" #brown
    echo -en "\e]PBd0d293" #yellow
    echo -en "\e]P49aacc3" #darkblue
    echo -en "\e]PC9aacc3" #blue
    echo -en "\e]P5bb77a4" #darkmagenta
    echo -en "\e]PDbb77a4" #magenta
    echo -en "\e]P677bbb5" #darkcyan
    echo -en "\e]PE77bbb5" #cyan
    echo -en "\e]P7777777" #lightgrey
    echo -en "\e]PF777777" #white
    clear #for background artifacting
fi

#my personal bin
export PATH=$PATH:$HOME/bin

#python startup file
export PYTHONSTARTUP=$HOME/.pythonrc

#setting up colour in less
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R'
export PAGER='/usr/bin/less'
# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# extended globbing
shopt -s extglob

# Preventing terminal scroll lock
stty -ixon

#vim, rather than emacs, key control
set -o vi
export EDITOR=vim

#colour
alias ls='ls -h --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias pacman='pacman --color=auto'

eval $(dircolors -b)

#auto vlc ncurses
#alias vlc='vlc -I ncurses'

#making feh a little nicer
alias feh='feh --scale-down'

#the prompt
export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'


#union server sftp, ensures vpn connection first
#sleep is necessary to wait for connection to become effective
alias dougal='sudo pon ImperialVPN && sleep 6 && sudo ip route add 155.198.3.130 dev ppp0 && sftp ar1610@dougal.union.ic.ac.uk ; sudo poff ImperialVPN'
#MAYBE I CAN USE curlftpfs INSTEAD TO MOUNT THE WEBSITE FOLDER NICELY

#some network gubbins
#alias getips='sudo arp-scan --interface=wlan0 --localnet'

##
##other useful bits and bobs

###	Handy Extract Program
###     found at http://dotfiles.org/~blackbook/.bashrc
extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1    ;;
             *.tar.gz)    tar xvzf $1    ;;
             *.bz2)       bunzip2 $1     ;;
             *.rar)       unrar x $1     ;;
             *.gz)        gunzip $1      ;;
             *.tar)       tar xvf $1     ;;
             *.tbz2)      tar xvjf $1    ;;
             *.tgz)       tar xvzf $1    ;;
             *.zip)       unzip $1       ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1        ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

##
## make full directory structure
alias mkdir='mkdir -p -v'

## rm safety
alias rm=' timeout 3 rm -Iv --one-file-system'

## mv safety
alias mv=' timeout 8 mv -iv'

