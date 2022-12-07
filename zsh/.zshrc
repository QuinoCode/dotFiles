[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
##file imports
 plug "$HOME/.config/zsh/aliases.zsh"
# Example install plugins
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

# Example theme
plug "zap-zsh/zap-prompt"

# Example install completion
plug "esc/conda-zsh-completion"

#[ -f "/home/quino/.ghcup/env" ] && source "/home/quino/.ghcup/env" # ghcup-env
[ -f "/home/quino/.ghcup/env" ] && source "/home/quino/.ghcup/env" # ghcup-env