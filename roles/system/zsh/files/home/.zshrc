# =============================================================================
# ZSH USER CONFIGURATION (~/.zshrc)
# =============================================================================
# User personal configuration
# This file is loaded after /etc/zshrc

# -----------------------------------------------------------------------------
# USER ENVIRONMENT VARIABLES
# -----------------------------------------------------------------------------
# User paths
export PATH="$PATH:$HOME/.local/bin"

# MODULAR CONFIGURATION LOADING
# -----------------------------------------------------------------------------
# Create configuration directory if it doesn't exist
[[ -d ~/.config/zsh ]] || mkdir -p ~/.config/zsh

# Load modular configurations
[[ -f ~/.config/zsh/plugins.zsh ]] && source ~/.config/zsh/plugins.zsh
[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh
[[ -f ~/.config/zsh/git.zsh ]] && source ~/.config/zsh/git.zsh
[[ -f ~/.config/zsh/user.zsh ]] && source ~/.config/zsh/user.zsh

# -----------------------------------------------------------------------------
# SHELL INTEGRATIONS
# -----------------------------------------------------------------------------
# Fzf (fuzzy finder)
eval "$(fzf --zsh)"

# Zoxide (smarter cd) - using 'z' command to avoid conflicts with native cd completion
eval "$(zoxide init zsh)"

# Optional: Add alias if you want to use 'cd' for zoxide
# alias cd='z'
