# 🐚 ZSH Module - Modern Shell Configuration

Modern ZSH configuration with Powerlevel10k theme, intelligent plugins, and optimized performance for development environments.

## 📁 File Structure

```bash
roles/system/zsh/
├── files/
│   ├── home/.config/zsh/           # User ZSH configuration
│   │   ├── .p10k.zsh              # Powerlevel10k theme config
│   │   ├── aliases.zsh            # Custom aliases
│   │   ├── git.zsh                # Git integration with zgit aesthetics
│   │   ├── plugins.zsh            # Plugin management (Zinit)
│   │   └── syntax-highlighting.zsh # Syntax highlighting config
│   ├── home/.zshrc                 # Main ZSH configuration
│   └── etc/                        # System-wide ZSH files
├── tasks/main.yml                  # Ansible deployment tasks
├── vars/main.yml                   # Configuration variables
└── README.md                       # This file
```

## 🚀 Functionality

### Theme & Interface

- **Powerlevel10k**: Fast, customizable prompt with instant loading
- **Pure style**: Clean, minimalist design with essential information
- **Custom colors**: Grey context, blue directories, smart Git status
- **Nerd Font icons**: Modern visual indicators throughout

### Plugin Management

- **Zinit**: High-performance plugin manager
- **Oh My Zsh plugins**: Git, sudo, command-not-found, man
- **Essential plugins**: Syntax highlighting, autosuggestions, completions
- **FZF integration**: Fuzzy finding with tab completion

### Git Integration

- **Custom Git status**: Aesthetics imported from zgit function
- **Visual indicators**: Staged, modified, untracked, conflicts, stash
- **Smart caching**: Performance optimized for large repositories
- **Powerlevel10k integration**: Seamless prompt display


### Performance Features

- **Intelligent caching**: Git status and completions
- **Asynchronous updates**: Non-blocking prompt updates
- **Optimized loading**: Instant prompt with deferred initialization
- **Memory efficient**: Minimal resource usage

## 📖 Quick Start

### Installation

```bash
# Deploy ZSH configuration
$ ansible-playbook -i inventory playbook.yml --tags zsh

# Manual installation for current user
$ source ~/.zshrc
```

### First Time Setup

1. Install required dependencies (handled by Ansible)
2. ZSH becomes default shell for root
3. Configuration copied to `/etc/skel/` for new users
4. Powerlevel10k instant prompt automatically enabled

## ⚙️ Configuration

### Key Variables

```yaml
# Deployment targets
zsh_packages: [zsh, git, curl, keychain]  # Required packages
zsh_file_mode: "0644"           # File permissions
zsh_owner: root                 # File ownership
zsh_group: root
```

### Plugin Configuration

```bash
# Plugin manager location
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Performance settings
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
POWERLEVEL9K_INSTANT_PROMPT=verbose
```

### Customization

- **Aliases**: Edit `~/.config/zsh/aliases.zsh`
- **Git settings**: Modify `~/.config/zsh/git.zsh`
- **Theme**: Configure `~/.config/zsh/.p10k.zsh`

## 🔧 Features

### Command Enhancements

- **Better ls**: Colored output with modern aliases (`ll`, `la`, `l`)
- **Smart cat**: Automatic bat integration with syntax highlighting
- **Safe operations**: Interactive prompts for `cp`, `mv`, `rm`
- **System info**: Enhanced `df`, `du`, `free` with human-readable output

### Development Tools

- **Git aliases**: Enhanced workflow with Oh My Zsh git plugin
- **FZF integration**: Fuzzy file finding and command history
- **Zoxide**: Smart directory navigation with `z` command
- **Completion**: Advanced tab completion for commands and arguments

### Shell Integrations

- **Virtual environments**: Python venv detection and display
- **SSH detection**: Automatic prompt adaptation for remote sessions
- **Background jobs**: Visual indication of running processes
- **Command timing**: Execution time display for long-running commands

## 📚 Documentation

- **[QUICK_REFERENCE.md](QUICK_REFERENCE.md)**: Essential shortcuts and commands
- **[Powerlevel10k Documentation](https://github.com/romkatv/powerlevel10k)**: Theme customization
- **[Zinit Documentation](https://github.com/zdharma-continuum/zinit)**: Plugin management

---

*This configuration provides a modern, efficient, and visually appealing ZSH environment optimized for development workflows.*
