# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# Check ssh key
# function check_ssh {
#         [[ $3 =~ '\b(ssh|git|sftp)\b' ]] || return
#         [[ -n "$SSH_AGENT_PID" && -e "/proc/$SSH_AGENT_PID" ]] \
#                 && ssh-add -l >/dev/null && return
#         eval `keychain --eval --agents ssh id_rsa`
# }
# autoload -U add-zsh-hook
# add-zsh-hook preexec check_ssh

# Chance directory and list all files
function cl() {
	cd "$1" && la
}	

# Save current path so new tabs open in the same directory
# keep_current_path() {
#   printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
# }
# precmd_functions+=(keep_current_path)

# function clip() {
#   pwsh.exe -Command '$input | Set-Clipboard'
# }

function ntfy() {
  local title=""  
  local priority="" 
  local tags="" 

  for arg in "$@"; do  
      case $arg in  
          --title=*)  
              title="${arg#*=}"  
              ;;  
          --priority=*)  
              priority="${arg#*=}"  
              ;;  
          --tags=*)  
              tags="${arg#*=}"  
              ;;  
          *)   
      esac  
  done  

  if [ -z "$1" ] || [[ "$1" == "--"* ]]; then  
      read input  
  else
      input=$1
  fi
    
  curl -d "$input" -H "Title: $title" -H "Priority: $priority" -H "Tags: $tags" ntfy.sh/XythpdrtazYNem8ot > /dev/null 2>&1
}
