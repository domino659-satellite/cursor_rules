# =============================================================================
# GIT PROMPT CONFIGURATION
# =============================================================================
# Custom Git prompt styling for ZSH with Nerd Font icons and color coding
# Provides visual Git status information in the terminal prompt

# -----------------------------------------------------------------------------
# COLOR PALETTE DEFINITIONS
# -----------------------------------------------------------------------------

# Color variables for consistency and maintainability
local color_grey='242'
local color_green='2'
local color_teal='#0A9388'
local color_light_green='82'
local color_orange='208'
local color_blue='33'
local color_red='#8B040B'
local color_cyan='87'
local color_white='255'

# -----------------------------------------------------------------------------
# GIT PROMPT THEME CONFIGURATION
# -----------------------------------------------------------------------------

# Basic prompt structure
export ZSH_THEME_GIT_PROMPT_PREFIX="%F{$color_teal}\ue0a0 %f"            # Git prefix icon
export ZSH_THEME_GIT_PROMPT_SEPARATOR="%F{$color_teal}|%f"               # Branch-status separator
export ZSH_THEME_GIT_PROMPT_SUFFIX=""                                    # Git suffix (disabled)

# Branch name colors
export ZSH_THEME_GIT_PROMPT_BRANCH="%F{$color_white}"                    # Default branch color
export ZSH_THEME_GIT_PROMPT_BRANCH_MAIN="%F{$color_orange}"              # Main branch color
export ZSH_THEME_GIT_PROMPT_BRANCH_DEV="%F{$color_blue}"                 # Dev/develop branch color

# Git status indicators with Nerd Font icons
export ZSH_THEME_GIT_PROMPT_STAGED="%F{$color_light_green}\uf067 "       # Staged files (green plus)
export ZSH_THEME_GIT_PROMPT_CHANGED="%F{$color_orange}\uf067 "           # Modified files (orange plus)
export ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{$color_cyan}… "                # Untracked files (cyan dots)
export ZSH_THEME_GIT_PROMPT_CONFLICTS="%F{$color_red}\ueab8 "            # Merge conflicts (red warning)
export ZSH_THEME_GIT_PROMPT_AHEAD="%F{$color_teal}⇡"                     # Commits ahead (teal up arrow)
export ZSH_THEME_GIT_PROMPT_BEHIND="%F{$color_teal}⇣"                    # Commits behind (teal down arrow)
export ZSH_THEME_GIT_PROMPT_STASHED="%F{$color_grey}\uf487 %f"           # Stash present (grey box)
export ZSH_THEME_GIT_PROMPT_CLEAN="%F{$color_green}\uf00c %f"            # Clean repository (green check)

# -----------------------------------------------------------------------------
# MAIN GIT STATUS FUNCTION
# -----------------------------------------------------------------------------

# Primary function to display Git status in the prompt
# Compatible with Powerlevel10k and other ZSH themes
git_super_status() {
    # Early exit if not in a Git repository
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        return
    fi
    
    # Get current branch name or short commit hash for detached HEAD
    local branch=$(git branch --show-current 2>/dev/null)
    if [[ -z "$branch" ]]; then
        branch=$(git rev-parse --short HEAD 2>/dev/null)
    fi
    
    # Parse Git status for file changes
    local git_status=$(git status --porcelain 2>/dev/null)
    local staged=$(echo "$git_status" | grep -c "^[MADRC]" 2>/dev/null || echo "0")
    local modified=$(echo "$git_status" | grep -c "^.[MD]" 2>/dev/null || echo "0")
    local untracked=$(echo "$git_status" | grep -c "^??" 2>/dev/null || echo "0")
    local conflicts=$(echo "$git_status" | grep -c "^UU\|^AA\|^DD" 2>/dev/null || echo "0")
    
    # Validate numeric values for file counts
    [[ "$staged" =~ ^[0-9]+$ ]] || staged=0
    [[ "$modified" =~ ^[0-9]+$ ]] || modified=0
    [[ "$untracked" =~ ^[0-9]+$ ]] || untracked=0
    [[ "$conflicts" =~ ^[0-9]+$ ]] || conflicts=0
    
    # Get ahead/behind commit counts relative to upstream
    local ahead=$(git rev-list --count @{upstream}..HEAD 2>/dev/null || echo "0")
    local behind=$(git rev-list --count HEAD..@{upstream} 2>/dev/null || echo "0")
    
    # Validate numeric values for commit counts
    [[ "$ahead" =~ ^[0-9]+$ ]] || ahead=0
    [[ "$behind" =~ ^[0-9]+$ ]] || behind=0
    
    # Count stash entries
    local stashed=$(git stash list 2>/dev/null | wc -l | tr -d ' ')
    [[ "$stashed" =~ ^[0-9]+$ ]] || stashed=0
    
    # Determine if repository is clean (no changes and no stash)
    local is_clean=0
    if [[ "$staged" -eq "0" ]] && [[ "$modified" -eq "0" ]] && [[ "$untracked" -eq "0" ]] && 
       [[ "$conflicts" -eq "0" ]] && [[ "$stashed" -eq "0" ]]; then
        is_clean=1
    fi
    
    # Build the status display string
    local status_display=""
    if [[ -n "$branch" ]]; then
        # Choose branch color based on branch name
        local branch_color="$ZSH_THEME_GIT_PROMPT_BRANCH"
        case "$branch" in
            "main")
                branch_color="$ZSH_THEME_GIT_PROMPT_BRANCH_MAIN"
                ;;
            "dev"|"develop")
                branch_color="$ZSH_THEME_GIT_PROMPT_BRANCH_DEV"
                ;;
        esac
        
        # Start with prefix and branch name
        status_display="$ZSH_THEME_GIT_PROMPT_PREFIX${branch_color}$branch%{${reset_color}%}"
        status_display+="$ZSH_THEME_GIT_PROMPT_SEPARATOR"
        
        # Collect status indicators in array for efficient concatenation
        local indicators=()
        
        # Add indicators based on repository state (numbers in matching colors)
        [[ "$staged" -ne "0" ]] && indicators+=(" $ZSH_THEME_GIT_PROMPT_STAGED$staged%f")
        [[ "$modified" -ne "0" ]] && indicators+=(" $ZSH_THEME_GIT_PROMPT_CHANGED$modified%f")
        [[ "$untracked" -ne "0" ]] && indicators+=(" $ZSH_THEME_GIT_PROMPT_UNTRACKED$untracked%f")
        [[ "$conflicts" -ne "0" ]] && indicators+=(" $ZSH_THEME_GIT_PROMPT_CONFLICTS$conflicts%f")
        [[ "$ahead" -ne "0" ]] && indicators+=(" $ZSH_THEME_GIT_PROMPT_AHEAD$ahead%f")
        [[ "$behind" -ne "0" ]] && indicators+=(" $ZSH_THEME_GIT_PROMPT_BEHIND$behind%f")
        [[ "$stashed" -ne "0" ]] && indicators+=(" $ZSH_THEME_GIT_PROMPT_STASHED")
        [[ "$is_clean" -eq "1" ]] && indicators+=(" $ZSH_THEME_GIT_PROMPT_CLEAN")
        
        # Append indicators if any exist
        if [[ ${#indicators[@]} -gt 0 ]]; then
            status_display+="${(j::)indicators}"
        fi
        
        echo "$status_display"
    fi
}

# -----------------------------------------------------------------------------
# GIT COLOR CONFIGURATION
# -----------------------------------------------------------------------------

# Configure Git's built-in color output for better terminal experience
git config --global color.ui auto 2>/dev/null
git config --global color.branch.current "yellow reverse" 2>/dev/null
git config --global color.branch.local "yellow" 2>/dev/null
git config --global color.branch.remote "green" 2>/dev/null
git config --global color.diff.meta "yellow bold" 2>/dev/null
git config --global color.diff.frag "magenta bold" 2>/dev/null
git config --global color.diff.old "red bold" 2>/dev/null
git config --global color.diff.new "green bold" 2>/dev/null
git config --global color.status.added "yellow" 2>/dev/null
git config --global color.status.changed "green" 2>/dev/null
git config --global color.status.untracked "cyan" 2>/dev/null

# -----------------------------------------------------------------------------
# POWERLEVEL10K INTEGRATION
# -----------------------------------------------------------------------------

# If using Powerlevel10k, this function will be automatically detected
# To use with Powerlevel10k, add this to your .p10k.zsh configuration:
# typeset -g POWERLEVEL9K_VCS_CONTENT_EXPANSION='$(git_super_status)'