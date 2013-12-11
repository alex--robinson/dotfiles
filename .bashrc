##some observatory stuff
#alias obslogin='ssh -X obslogin2.unige.ch -l arobinso'
#
#alias obsftp='sftp arobinso@obslogin2.unige.ch'

#replaced the chaps below by svn. These guys were probably outright dangerous!
#alias obsdown='rsync -avz --progress -e ssh arobinso@obslogin2.unige.ch:sync/ /home/alex/sync'

#alias obsup='rsync -avz --progress -e ssh /home/alex/sync/ arobinso@obslogin2.unige.ch:sync/'

#lenstool
#some global variables needed to be exported to get this chap to run...
#export LENSTOOL_DIR=/usr/local/lenstool_v6.7.1/
#export PATH=$PATH:$LENSTOOL_DIR/src:$LENSTOOL_DIR/utils:$LENSTOOL_DIR/perl
#export LD_LIBRARY_PATH=/usr/local/lib/

#IRAF?
#export PATH=$PATH:$/iraf/

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

# some options
shopt -s extglob

#vim, rather than emacs, key control
set -o vi
export EDITOR=vim

#colour
alias ls='ls -h --color=auto'
alias grep='grep --color=auto'
alias pacman='pacman --color=auto'

eval $(dircolors -b)

#auto vlc ncurses
alias vlc='vlc -I ncurses'

#making feh a little nicer
alias feh='feh --scale-down'

#the prompt
export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'

#monitors!
_HDMI=$( xrandr  | sed -n 's/^\(HDMI.\).*/\1/pg')
alias laptop='xrandr --output LVDS1 --auto --output $_HDMI --off'
alias monitor='xrandr --output LVDS1 --off --output $_HDMI --auto'
alias dual='xrandr --output $_HDMI --auto --left-of LVDS1 --output LVDS1 --auto --pos 1920x700 '
alias light_monitor='xrandr --output $_HDMI --brightness 1'
alias dark_monitor='xrandr --output $_HDMI --brightness 0.5'

#RPi! 
alias pilogin='ssh -X alex@raspberrypi'
alias pimount='sshfs alex@raspberrypi: /home/alex/pi'
#for RPi access when it isn't local. Uses my dnsdynamic account
alias expilogin='ssh -X alex@pi.o.clock.dnsdynamic.net'

#union server sftp, ensures vpn connection first
#sleep is necessary to wait for connection to become effective
alias dougal='sudo pon ImperialVPN && sleep 6 && sudo ip route add 155.198.3.130 dev ppp0 && sftp ar1610@dougal.union.ic.ac.uk ; sudo poff ImperialVPN'
#MAYBE I CAN USE curlftpfs INSTEAD TO MOUNT THE WEBSITE FOLDER NICELY

#some network gubbins
#alias getips='sudo arp-scan --interface=wlan0 --localnet'

##
##some programs

##minecraft
alias minecraft='java -Xmx1024M -Xms512M -cp -jar Programs/Minecraft/minecraft.jar'

##dwarves!!!
alias dwarf='~/Programs/df_linux/df'


##
##other useful bits and bobs

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

