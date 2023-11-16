# Functions

backward-kill-dir () {
    local WORDCHARS=${WORDCHARS//[-\/_]} 
    # echo $WORDCHARS
    zle backward-kill-word
    zle -f kill
}

# Key bindings

# Crtl + Backspace
zle -N backward-kill-dir
bindkey '^H' backward-kill-dir

# Crtl + Left/Right
bindkey ';5C' forward-word
bindkey ';5D' backward-word


