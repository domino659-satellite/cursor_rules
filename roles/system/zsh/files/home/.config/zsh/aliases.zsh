# =============================================================================
# ZSH ALIASES CONFIGURATION
# =============================================================================
# File dedicated to custom aliases

# -----------------------------------------------------------------------------
# NAVIGATION ALIASES
# -----------------------------------------------------------------------------
alias c='clear -x'
alias ..='cd ..'
alias ...='cd ../..'

# -----------------------------------------------------------------------------
# FILE OPERATION ALIASES
# -----------------------------------------------------------------------------
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# Bat (modern replacement for cat with syntax highlighting)
if command -v bat &> /dev/null; then
    alias cat='bat'
elif command -v batcat &> /dev/null; then
    alias cat='batcat'
else
    # Fallback to standard cat if bat is not installed
    alias cat='cat'
fi

alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'

# -----------------------------------------------------------------------------
# SYSTEM INFORMATION ALIASES
# -----------------------------------------------------------------------------
alias df='df --human-readable'
alias du='du --human-readable'

# Htop (if installed)
if command -v htop &> /dev/null; then
    alias top='htop'
fi

alias free='free --human'
alias ps='ps aux'

# -----------------------------------------------------------------------------
# TEXT PROCESSING ALIASES
# -----------------------------------------------------------------------------
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

# -----------------------------------------------------------------------------
# CUSTOM ALIASES
# -----------------------------------------------------------------------------
# Add your custom aliases here
alias python='python3'