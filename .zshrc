[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/goto.zsh ]] && source ~/.zsh/goto.zsh
[[ -f ~/.zsh/keybindings.zsh ]] && source ~/.zsh/keybindings.zsh


# Load Starship
eval "$(starship init zsh)"

# Load zoxide
eval "$(zoxide init zsh --cmd cd)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
