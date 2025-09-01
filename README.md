# 🚀 Ansible Infrastructure Management

Gestion automatisée de l'infrastructure avec Ansible - déploiement, configuration et maintenance de serveurs.

## 📁 Structure du Projet

```bash
ansible/
├── roles/                    # Rôles Ansible organisés par fonction
│   ├── system/              # Configuration système
│   │   ├── packages/        # Gestion des paquets
│   │   └── zsh/            # Configuration ZSH avancée
│   └── ...
├── playbooks/               # Playbooks d'exécution
├── inventory/               # Inventaire des serveurs
└── group_vars/              # Variables par groupe
```

## 🚀 Fonctionnalités

### Configuration Système

- **Gestion des paquets** : Installation et mise à jour automatisées
- **Monitoring** : Outils de surveillance système et réseau
- **Sécurité** : Configuration et maintenance des serveurs
- **Déploiement** : Mise en place d'environnements cohérents

### 🎨 Configuration ZSH Avancée

#### Prompt Personnalisé

- **Prompt multi-lignes** avec informations contextuelles
- **Statut Git intelligent** avec cache et indicateurs visuels
- **Environnements virtuels** détection automatique
- **Sessions Tmux** intégration transparente
- **Couleurs conditionnelles** (rouge pour root, bleu pour utilisateur)

#### Statistiques Système en Temps Réel

- **Load Average** : Charge système (1min-5min)
- **CPU Usage** : Utilisation processeur optimisée
- **RAM Usage** : Mémoire utilisée en pourcentage
- **Cache intelligent** : Mise à jour toutes les 3 secondes
- **Affichage RPS1** : Statistiques collées à droite

#### Modules Intégrés

- **Git Integration** (`zgit`) : Statut des repos avec cache
- **Remote Sessions** (`zremote`) : Gestion Tmux
- **History Search** (`zsh-history-search`) : Recherche dans l'historique
- **Auto-detection** (`zsh-auto-detect`) : Détection automatique des environnements
- **System Utils** (`zsh-system-utils`) : Utilitaires système et suggestions de paquets

#### Fonctionnalités Avancées

- **Complétion intelligente** avec cache optimisé
- **Historique persistant** avec recherche floue
- **Alias optimisés** pour la productivité
- **Gestion des sessions** avec raccourcis clavier
- **Intégration terminal** VS Code/Cursor

#### Raccourcis Clavier

- **Alt+S** : Lister les sessions Tmux existantes
- **Alt+T** : Créer une nouvelle session Tmux (nom automatique basé sur la date)
- **Alt+A** : Attacher à une session existante (mode interactif)
- **Alt+D** : Détacher de la session actuelle

#### Performance

- **Cache Git** : 5 secondes pour éviter les calculs répétés
- **Cache Stats** : 3 secondes pour les statistiques système
- **Complétion** : Cache optimisé avec invalidation intelligente
- **Hooks ZSH** : Mise à jour automatique des statuts

## 📦 Paquets Installés par Défaut

### 🔍 Outils de Monitoring

- **`htop`** - Moniteur de processus interactif
- **`atop`** - Moniteur système avec historique
- **`sysstat`** - Outils de statistiques système (iostat, mpstat, sar)
- **`iotop`** - Moniteur d'activité disque
- **`nethogs`** - Moniteur de trafic réseau par processus

### 🌐 Outils Réseau

- **`dnsutils`** - Outils DNS (dig, nslookup, host)
- **`tcpdump`** - Capture et analyse de paquets
- **`iftop`** - Moniteur de trafic réseau en temps réel
- **`iproute2`** - Outils réseau modernes (ip, ss, tc)
- **`netcat`** - Test de connectivité et transfert de fichiers
- **`nmap`** - Scanner de ports et réseaux
- **`wireshark`** - Analyseur de protocoles réseau

### 🛠️ Outils Utilitaires

- **`tree`** - Affichage arborescent des répertoires
- **`fd-find`** - Recherche de fichiers moderne et rapide
- **`ripgrep`** - Recherche de texte ultra-rapide
- **`bat`** - Affichage de fichiers avec coloration syntaxique
- **`exa`** - Listing de fichiers moderne avec couleurs
- **`fzf`** - Recherche floue interactive
- **`jq`** - Processeur JSON en ligne de commande

## 📖 Installation et Utilisation

### Prérequis

```bash
# Installation d'Ansible
$ sudo apt install ansible  # Ubuntu/Debian
$ sudo yum install ansible  # RHEL/CentOS
```

### Exécution

```bash
# Lancer un playbook
$ ansible-playbook -i inventory/hosts playbooks/main.yml

# Exécuter un rôle spécifique
$ ansible-playbook -i inventory/hosts playbooks/main.yml --tags packages
```

## ⚙️ Configuration

### Variables Principales

- `packages_generique_state` : État des paquets (present/absent)
- `packages_generique_update_cache` : Mise à jour du cache
- `packages_generique_cache_valid_time` : Validité du cache (3600s)

### Personnalisation

```yaml
# Dans group_vars/all.yml
packages_generique_monitoring:
  - htop
  - sysstat

packages_generique_network:
  - tcpdump
  - nmap
```

## 📚 Documentation

- [Guide des Rôles](roles/) - Documentation détaillée de chaque rôle
- [Variables et Configuration](group_vars/) - Options de configuration
- [Playbooks](playbooks/) - Exemples d'utilisation

## 🤝 Contribution

1. Fork du projet
2. Création d'une branche feature
3. Tests et validation
4. Pull Request avec description claire

## 🔧 Support

- **Issues** : Signalement de bugs et demandes de fonctionnalités
- **Documentation** : Guides détaillés dans chaque rôle
- **Exemples** : Playbooks de référence dans le dossier `playbooks/`

---
