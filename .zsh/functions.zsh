# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# Check ssh key
function check_ssh {
        [[ $3 =~ '\b(ssh|git|sftp)\b' ]] || return
        [[ -n "$SSH_AGENT_PID" && -e "/proc/$SSH_AGENT_PID" ]] \
                && ssh-add -l >/dev/null && return
        eval `keychain --eval --agents ssh id_rsa`
}
autoload -U add-zsh-hook
add-zsh-hook preexec check_ssh