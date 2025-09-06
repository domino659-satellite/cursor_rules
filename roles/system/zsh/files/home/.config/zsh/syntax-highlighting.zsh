# =============================================================================
# ZSH SYNTAX HIGHLIGHTING CONFIGURATION
# =============================================================================
# Dedicated configuration file for zsh-syntax-highlighting plugin
# Import this file from your plugins.zsh with: source ~/.config/zsh/syntax-highlighting.zsh

# ===================================================================
# ZSH-SYNTAX-HIGHLIGHTING STYLE CONFIGURATION
# ===================================================================

# Initialize the styles array
typeset -A ZSH_HIGHLIGHT_STYLES

# -----------------------------------------------------------------------------
# COMMANDS & EXECUTABLES
# -----------------------------------------------------------------------------

# Basic command types
# ZSH_HIGHLIGHT_STYLES[default]='none'                           # Default style
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#8B040B,bold'            # Unknown tokens (your red)
# ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'                # if, then, else, etc.
# ZSH_HIGHLIGHT_STYLES[alias]='fg=green'                         # Aliases
# ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green'                  # Suffix aliases  
# ZSH_HIGHLIGHT_STYLES[global-alias]='fg=cyan'                   # Global aliases
# ZSH_HIGHLIGHT_STYLES[builtin]='fg=green'                       # Built-in commands
# ZSH_HIGHLIGHT_STYLES[function]='fg=green'                      # Functions
# ZSH_HIGHLIGHT_STYLES[command]='fg=green'                       # External commands
# ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,underline'          # sudo, time, etc.
# ZSH_HIGHLIGHT_STYLES[commandseparator]='none'                  # ; && || |
# ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green'                # Hashed commands

# -----------------------------------------------------------------------------
# PATHS & FILES
# -----------------------------------------------------------------------------

# ZSH_HIGHLIGHT_STYLES[path]='underline'                         # File/directory paths
# ZSH_HIGHLIGHT_STYLES[path_pathseparator]='underline'           # Path separators
# ZSH_HIGHLIGHT_STYLES[path_prefix]='underline'                  # Path prefixes
# ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='underline'    # Path prefix separators
# ZSH_HIGHLIGHT_STYLES[globbing]='fg=blue'                       # Glob patterns *, ?, etc.

# -----------------------------------------------------------------------------
# STRINGS & QUOTES
# -----------------------------------------------------------------------------

# ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow'       # 'single quotes'
# ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=yellow'       # "double quotes"
# ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=yellow'       # $'dollar quotes'
# ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=cyan'                       # '' inside strings
# ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=cyan'  # $var inside ""
# ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='none'              # backticks
# ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='none'       # backticks in ""
# ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='none'       # backticks in $''

# -----------------------------------------------------------------------------
# REDIRECTIONS & OPERATORS
# -----------------------------------------------------------------------------

# ZSH_HIGHLIGHT_STYLES[redirection]='fg=yellow'                  # > < >> << etc.
# ZSH_HIGHLIGHT_STYLES[comment]='fg=black,bold'                  # # comments
# ZSH_HIGHLIGHT_STYLES[named-fd]='none'                          # Named file descriptors
# ZSH_HIGHLIGHT_STYLES[numeric-fd]='none'                        # Numeric file descriptors

# -----------------------------------------------------------------------------
# ARGUMENTS & ASSIGNMENTS
# -----------------------------------------------------------------------------

# ZSH_HIGHLIGHT_STYLES[arg0]='fg=green'                          # First argument
# ZSH_HIGHLIGHT_STYLES[assign]='none'                            # Variable assignments
# ZSH_HIGHLIGHT_STYLES[autodirectory]='underline'                # Auto cd to directory

# -----------------------------------------------------------------------------
# BRACKETS & MATCHING
# -----------------------------------------------------------------------------

ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=#8B040B,bold'            # Mismatched brackets
# ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'           # () level 1
# ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=green,bold'          # () level 2  
# ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=magenta,bold'        # () level 3
# ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=yellow,bold'         # () level 4
# ZSH_HIGHLIGHT_STYLES[bracket-level-5]='fg=cyan,bold'           # () level 5
# ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='standout'        # Matching bracket