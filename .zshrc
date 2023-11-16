# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/home/caalspi/.local/bin:$PATH

# source /home/caalspi/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="/home/caalspi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/wsl2fix.zsh ]] && source ~/.zsh/wsl2fix.zsh
[[ -f ~/.zsh/goto.zsh ]] && source ~/.zsh/goto.zsh
[[ -f ~/.zsh/keybindings.zsh ]] && source ~/.zsh/keybindings.zsh


# Load Starship
eval "$(starship init zsh)"
