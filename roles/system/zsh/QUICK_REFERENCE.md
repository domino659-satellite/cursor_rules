# 🚀 ZSH Quick Reference

## ⌨️ Keyboard Shortcuts

### Navigation

| Shortcut | Action |
|----------|--------|
| `Ctrl + A` | Beginning of line |
| `Ctrl + E` | End of line |
| `Ctrl + R` | Search in history (FZF) |
| `Ctrl + T` | Fuzzy file finder (FZF) |
| `Alt + C` | Fuzzy directory navigation (FZF) |
| `Ctrl + Left/Right` | Navigate by words |
| `Page Up/Down` | History navigation |

### ZSH Line Editor

| Shortcut | Action |
|----------|--------|
| `Tab` | Smart completion with FZF |
| `Ctrl + X, Ctrl + E` | Edit command in editor |
| `Ctrl + U` | Delete to beginning of line |
| `Ctrl + K` | Delete to end of line |
| `Ctrl + W` | Delete previous word |

### Plugin Features

| Shortcut | Action |
|----------|--------|
| `Double ESC` | Add sudo to command (sudo plugin) |
| `→` | Accept autosuggestion |
| `Ctrl + →` | Accept one word of suggestion |

## 🔧 Main Commands

### Directory Navigation

```bash
z <directory>           # Smart cd with zoxide
z -              # Go to previous directory
zi               # Interactive directory selection
```

### Git Integration

```bash
# Git commands from Oh My Zsh plugin
gst              # git status
gco              # git checkout  
gb               # git branch
glog             # git log --oneline --decorate --graph
gd               # git diff
gdc              # git diff --cached
```

### FZF Integration

```bash
fzf              # Fuzzy finder
**<Tab>          # Trigger FZF completion
kill **<Tab>     # Kill process with FZF selection
ssh **<Tab>      # SSH with FZF host selection
```

## 📋 Essential Aliases

### File Operations

```bash
ll              # ls -la --color=auto
la              # ls -A --color=auto
l               # ls -CF --color=auto
..              # cd ..
...             # cd ../..
c               # clear -x
```

### Safe Operations

```bash
cp              # cp --interactive
mv              # mv --interactive
rm              # rm --interactive
```

### Text Processing

```bash
cat             # bat (with syntax highlighting)
grep            # grep --color=auto
diff            # diff --color=auto
ip              # ip --color=auto
```

### System Information

```bash
df              # df --human-readable
du              # du --human-readable
free            # free --human
ps              # ps aux
top             # htop (if available)
```

## ⚡ Performance & Caching

### Plugin Performance

```bash
# Zinit optimization
zinit cdreplay -q        # Replay cached completions

# Check plugin load times
zinit times              # Show loading times
```

### Completion System

```bash
# Cache locations
~/.zcompdump            # ZSH completion cache
~/.cache/fzf/           # FZF cache
```

### Powerlevel10k

```bash
p10k configure         # Reconfigure theme
p10k reload            # Reload configuration
```

## 🎨 Theme Customization

### Powerlevel10k Configuration

```bash
# Edit theme settings
vim ~/.config/zsh/.p10k.zsh

# Key variables
POWERLEVEL9K_INSTANT_PROMPT=verbose
POWERLEVEL9K_CONTEXT_TEMPLATE="%F{242}%n@%m%f"
```

### Git Display

```bash
# Git status in prompt automatically shows:
# 🔥 - staged files
# 📝 - modified files  
# ❓ - untracked files
# ✅ - clean repository
```

## 🔌 Plugin Management

### Zinit Commands

```bash
zinit update            # Update all plugins
zinit update <plugin>   # Update specific plugin
zinit list              # List installed plugins
zinit delete <plugin>   # Remove plugin
```

### Plugin Locations

```bash
~/.local/share/zinit/   # Zinit installation
~/.config/zsh/          # ZSH configuration files
```

## 🧪 Troubleshooting

### Debug Commands

```bash
# Test ZSH configuration
zsh -n ~/.zshrc         # Syntax check

# Reset completion cache
rm ~/.zcompdump && exec zsh

# FZF installation check
fzf --version

# Check Powerlevel10k
p10k configure
```

### Common Issues

```bash
# Slow startup
zinit times             # Check plugin load times

# Completion not working  
compinit                # Reinitialize completions

# Theme not loading
source ~/.config/zsh/.p10k.zsh
```

## 📚 Configuration Files

### Main Files

- `~/.zshrc` - Main configuration loader
- `~/.config/zsh/plugins.zsh` - Plugin management (Zinit)
- `~/.config/zsh/aliases.zsh` - Custom aliases
- `~/.config/zsh/.p10k.zsh` - Powerlevel10k theme
- `~/.config/zsh/git.zsh` - Git integration
- `~/.config/zsh/syntax-highlighting.zsh` - Syntax highlighting

## 📚 Documentation

- **[README.md](README.md)** - Complete module overview and configuration
- **[Powerlevel10k](https://github.com/romkatv/powerlevel10k)** - Theme documentation
- **[FZF](https://github.com/junegunn/fzf)** - Fuzzy finder documentation
- **[Zinit](https://github.com/zdharma-continuum/zinit)** - Plugin manager documentation
