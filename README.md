# 🎬 CLI ANIME WINDOWS

[![Release](https://img.shields.io/github/v/release/Maloll/CLI_ANIME_WINDOWS?color=CA9861&label=Version)](https://github.com/Maloll/CLI_ANIME_WINDOWS/releases)
[![Discord](https://img.shields.io/badge/Discord-maloll-5865F2?logo=discord&logoColor=white)](https://discordapp.com/users/970348301448806430)

Installation et configuration automatique de **MPV**, **Syncplay** et **ani-cli** via Scoop pour un setup de streaming optimal.

---

## 📥 Téléchargement

[ ![Download](https://img.shields.io/badge/TÉLÉCHARGER-DERNIÈRE_RELEASE-CA9861?style=for-the-badge&logo=github) ](https://github.com/Maloll/CLI_ANIME_WINDOWS/releases/latest)

> [!CAUTION]
> **IMPORTANT :** Une fois le fichier `.zip` téléchargé, tu **DOIS** l'extraire complètement avant de lancer l'installateur. Si tu lances le `.bat` directement depuis l'aperçu du ZIP, les fichiers de configuration ne seront pas trouvés.

---

## 🚀 Installation

1. Clique sur le bouton **TÉLÉCHARGER** ci-dessus.
2. Décompresse l'archive (Clic droit -> Extraire tout).
3. Double-clique sur `installer.bat`.
4. Patiente pendant que le script travaille. Un message s'affichera en <span style="color:#90EE90">**Vert Clair**</span> une fois terminé.

---

## 🖥️ Utilisation d'ani-cli

Pour regarder tes animes, utilise **Git Bash** (déjà inclus dans l'install) :

| Commande | Action |
| :--- | :--- |
| `ani-cli` | Menu interactif de recherche. |
| `ani-cli -s` | Pour regarder en simultané avec Syncplay. |
| `ani-cli -u` | Met à jour l'outil vers la dernière version. |
| `ani-cli -c` | Reprend la lecture là où tu t'étais arrêté. |

---
## ⌨️ Raccourcis Clavier (MPV)

### 🌟 Amélioration d'image (Anime4K)
| Touche | Action |
| :--- | :--- |
| `&` | **Mode Ultra** : Upscaling maximal (nécessite un bon GPU). |
| `é` | **Mode Léger** : Amélioration fluide pour petites configs. |
| `"` | **OFF** : Désactive tous les shaders. |

### 🎬 Contrôle de la lecture
| Touche | Action |
| :--- | :--- |
| `Espace` | Lecture / Pause. |
| `f` | Basculer en plein écran. |
| `<` | Reculer de 5 secondes. |
| `>` | Avancer de 5 secondes. |
| `B` / `N` | Chapitre Précédent / Suivant. |

---

## ⚙️ Configuration de Syncplay


### ✅ Automatisation du lecteur
Le script détecte et injecte automatiquement le chemin vers **MPV** dans Syncplay. 
Pas besoin de chercher le dossier `scoop`.

### 📺 Nouvelle interface OSD (v1.5)
La configuration de Syncplay a été entièrement revue pour améliorer votre confort visuel :
* **Support OSD optimisé** : Les messages de synchronisation et les notifications s'affichent désormais proprement par-dessus la vidéo.
* **Format Compact** : L'interface à l'écran a été recalibrée pour être la plus discrète possible, laissant un maximum de place à l'image.

---
## 🗑️ Désinstallation

Tu souhaites faire du tri ou supprimer proprement le projet ? C’est aussi simple que l’installation :

1. Ouvre le fichier `uninstaller.bat` dans ton dossier.
2. Le script va supprimer automatiquement :
   * Les logiciels installés via Scoop (**MPV**, **Syncplay**, etc.).
   * Les fichiers de configuration et les shaders.
   * Les fichiers temporaires.

---
## 🎨 Palette visuelle du script
* 🟠 **Orange** : Informations et progression.
* 🟢 **Vert Clair** : Succès de l'installation.
* 🔴 **Rouge** : Erreur critique (vérifie le fichier `error.log`).

---
## 📦 Logiciels Installés

Le script installe et configure automatiquement les logiciels suivants pour garantir une expérience optimale :

* **Gestionnaire** : `scoop` (Gestionnaire de paquets Windows).
* **Lecteur & Streaming** : `mpv`, `syncplay`, `ani-cli`.
* **Moteur de téléchargement** : `yt-dlp`, `aria2` (utilisé pour accélérer les installations).
* **Traitement Vidéo** : `ffmpeg`.
* **Outils Système** : `git`, `7zip`, `fzf`.
* **Améliorations Visuelles** : `ModernZ` (UI user-friendly pour MPV), `Anime4K` (Shaders pour améliorer la qualité des animes).

---
Fait par [Maloll](https://github.com/Maloll). ❤️
