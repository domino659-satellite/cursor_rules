# 🐚 Module ZSH - Configuration Optimisée

## 🚀 Fonctionnalités

### Cache Système

- **CPU/RAM** : Calculs mis en cache (3 secondes)
- **Git Status** : Cache intelligent avec invalidation automatique
- **Completion** : Cache ZSH natif pour la performance

### Intégration Git

- **Thème personnalisé** avec symboles Unicode (Nerd Fonts)
- **Indicateurs visuels** : staged, conflicts, changes, untracked
- **Cache intelligent** pour éviter les recalculs

### Gestion des Sessions

- **Tmux** : gestion des sessions
- **Détection automatique** des sessions actives

### Recherche d'Historique

- **Navigation par pages** avec scroll complet
- **Recherche textuelle** avancée
- **Raccourcis** : Ctrl+R (recherche), Ctrl+S (incrémentale), Alt+H (rapide)

### Completion et Interface

- **Completion intelligente** avec cache et suggestions
- **Syntax highlighting** optimisé et configurable
- **Aliases système** : ll, la, update, upgrade, etc.

## ⚙️ Configuration

### Variables principales

```yaml
zsh_config_files:
  - zgit
  - zlogout
  - zremote
  - zsh-history-search
  - zshenv
  - zshrc

zsh_file_mode: "0644"
zsh_owner: root
zsh_group: root
```

### Cache système

```bash
# Timeouts configurables
__SYSTEM_CACHE_TIMEOUT=3        # Cache CPU/RAM (secondes)
__GIT_CACHE_TIMEOUT=5          # Cache Git (secondes)
```

## 🛠️ Déploiement

```bash
# Déploiement complet
ansible-playbook -i inventory playbook.yml --tags zsh

# Déploiement spécifique
ansible-playbook -i inventory playbook.yml --tags "zsh,git,completion"
```

## 📚 Documentation

- **[QUICK_REFERENCE.md](QUICK_REFERENCE.md)** : Raccourcis et commandes essentielles
