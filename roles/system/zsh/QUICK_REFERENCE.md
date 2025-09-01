# 🚀 Référence Rapide ZSH

## ⌨️ Raccourcis Clavier

### Navigation

| Raccourci | Action |
|-----------|--------|
| `Ctrl + A` | Début de ligne |
| `Ctrl + E` | Fin de ligne |
| `Ctrl + R` | Recherche dans l'historique |
| `Ctrl + S` | Recherche avant dans l'historique |
| `Ctrl + Left/Right` | Navigation par mots |
| `Page Up/Down` | Navigation dans l'historique |

### Sessions (zremote)

| Raccourci | Action |
|-----------|--------|
| `Alt + L` | Lister les sessions Tmux existantes |
| `Alt + T` | Créer une nouvelle session  Tmux |
| `Alt + A` | Attacher à une session existante|
| `Alt + D` | Détacher de la session actuelle |

## 🔧 Commandes Principales

### Système

```bash
get_system_stats          # Statistiques système (cache 3s)
```

### Git (zgit)

```bash
git_super_status         # Statut Git dans le prompt
update_current_git_vars  # Mettre à jour variables Git
```

### Historique (zsh-history-search)

```bash
Ctrl + R                 # Recherche avancée
Ctrl + S                 # Recherche incrémentale
Alt + H                  # Historique rapide
```

## 📋 Aliases Essentiels

### Navigation et Fichiers

```bash
ll          # ls -l
la          # ls -A
l           # ls -CF
..          # cd ..
...         # cd ../..
c           # clear
```

### Système et Maintenance

```bash
update      # sudo apt update
upgrade     # sudo apt upgrade
```

### Couleurs et Formatage

```bash
grep        # grep --color=auto
diff        # diff --color=auto
ip          # ip --color=auto
```

## ⚡ Cache et Performance

### Timeouts

```bash
__SYSTEM_CACHE_TIMEOUT=3    # Cache CPU/RAM (secondes)
__GIT_CACHE_TIMEOUT=5       # Cache Git (secondes)
```

### Dossiers de cache

```bash
~/.cache/zsh/completion      # Cache completion
~/.zsh/git_cache/           # Cache Git
```

## 🧪 Tests Rapides

```bash
# Test de syntaxe
bash -n /etc/zsh/zshrc

# Test de chargement
zsh -c "source /etc/zsh/zshrc"

# Vérification du cache
ls -la ~/.cache/zsh/
ls -la ~/.zsh/git_cache/
```

## 📚 Documentation

- **[README.md](README.md)** : Vue d'ensemble et configuration du module
