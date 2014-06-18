#
# ~/.bash_profile
#

#Using SLiM to start X
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# TMUX attaches or starts if in a login shell
if which tmux 2>&1 >/dev/null; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi


[[ -f ~/.bashrc ]] && . ~/.bashrc
