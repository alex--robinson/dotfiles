#
# ~/.bash_profile
#

#Using SLiM to start X
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

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

# TMUX attaches or starts if in a login shell
if which tmux 2>&1 >/dev/null; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi


[[ -f ~/.bashrc ]] && . ~/.bashrc
