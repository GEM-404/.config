#!/bin/bash

# Change working dir in shell to last dir in lf on exit
# You need to either copy the content of this file to your shell


# You may also like to assign a key to this command:
# bind '"\C-o":"lfcd\C-m"' # bash
# bind -S '^o' 'lfcd\n'    # zsh

lfcd() {
    tmp="$(mktemp)"
    lf-ueberzug -last-dir-path="$tmp" "$a"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" > /dev/null
        
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}
