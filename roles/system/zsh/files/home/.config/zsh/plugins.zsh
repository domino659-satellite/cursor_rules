# =============================================================================
# ZSH PLUGINS CONFIGURATION
# =============================================================================
# File dedicated to plugin configuration

# -----------------------------------------------------------------------------
# PLUGIN MANAGER (Zinit)
# -----------------------------------------------------------------------------
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Automatic Zinit installation if needed
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# -----------------------------------------------------------------------------
# THEME (Powerlevel10k)
# -----------------------------------------------------------------------------
# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Install Powerlevel10k
zinit ice depth=1
zinit light romkatv/powerlevel10k

# Load Powerlevel10k configuration
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# -----------------------------------------------------------------------------
# ESSENTIAL PLUGINS
# -----------------------------------------------------------------------------

# Load syntax highlighting configuration (before the plugin)
source ~/.config/zsh/syntax-highlighting.zsh

# Syntax highlighting (must be loaded last)
zinit light zsh-users/zsh-syntax-highlighting
# History-based autosuggestions
zinit light zsh-users/zsh-autosuggestions
# Additional completions
zinit light zsh-users/zsh-completions
# FZF (fuzzy finder) - Manual installation in Zinit
if [ ! -d "$ZINIT_HOME/plugins/junegunn---fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git "$ZINIT_HOME/plugins/junegunn---fzf"
    "$ZINIT_HOME/plugins/junegunn---fzf/install" --key-bindings --completion --no-update-rc
fi

# Add fzf to PATH
export PATH="$ZINIT_HOME/plugins/junegunn---fzf/bin:$PATH"

# Load key-bindings and completions
[ -f "$ZINIT_HOME/plugins/junegunn---fzf/shell/key-bindings.zsh" ] && source "$ZINIT_HOME/plugins/junegunn---fzf/shell/key-bindings.zsh"
[ -f "$ZINIT_HOME/plugins/junegunn---fzf/shell/completion.zsh" ] && source "$ZINIT_HOME/plugins/junegunn---fzf/shell/completion.zsh"

# Tab completion with fzf
zinit light Aloxaf/fzf-tab

# -----------------------------------------------------------------------------
# OH MY ZSH PLUGINS
# -----------------------------------------------------------------------------
# Git plugin
zinit snippet OMZP::git
# Sudo plugin (double ESC to add sudo)
zinit snippet OMZP::sudo
# Command not found plugin
zinit snippet OMZP::command-not-found
# Man plugin
zinit snippet OMZP::man

# -----------------------------------------------------------------------------
# PERFORMANCE OPTIMIZATION
# -----------------------------------------------------------------------------
# Performance optimization
zinit cdreplay -q

# -----------------------------------------------------------------------------
# PLUGIN CONFIGURATIONS
# -----------------------------------------------------------------------------
# Configuration for zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Configuration for fzf-tab previews
zstyle ':fzf-tab:complete:cd:*:*' fzf-preview 'ls --color=auto $realpath'  # Show directory contents for cd
zstyle ':fzf-tab:complete:cat:*:*' fzf-preview 'cat $realpath'             # Show file contents for cat
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath' # Show directory contents for zoxide
