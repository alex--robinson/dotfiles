#!/bin/sh
lock() {
    #i3lock -c 202020
    ~/.i3/i3lock-wrapper
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    hibernate)
        #lock && systemctl hibernate
        cmus-remote -s & lock & sudo pm-hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
esac

exit 0
