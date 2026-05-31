# 📦 DowFlow V8 - Guide de Compilation

## Status: ✅ Préparé (En attente de compilation)

---

## 🎯 Qu'est-ce que V8 ?

V8 compile les **5 modules principaux** de DowFlow en exécutables Windows standalone (`.exe`).

**Avantage:** Distribution sans Python requis !

---

## 📋 Les 5 Modules à Compiler

| # | Module | Exécutable | Description |
|---|--------|-----------|-------------|
| 1 | `app.py` | `DowFlow_App.exe` | Application Web Flask principale |
| 2 | `playlist.py` | `DowFlow_Playlist.exe` | Engine de téléchargement |
| 3 | `franime_extractor.py` | `DowFlow_Franime.exe` | Extracteur Franime.fr |
| 4 | `browser_extractor.py` | `DowFlow_Browser.exe` | Extracteur navigateur générique |
| 5 | `download_queue.py` | `DowFlow_Queue.exe` | Queue + Rate limiting |

---

## 🔨 Comment Compiler ?

### Option 1: Batch Script (Windows)
```bash
compile_v8.bat
```

### Option 2: Python Script
```bash
python compile_v8.py
```

### Option 3: Manuel (PyInstaller)
```bash
python -m PyInstaller --onefile app.py -n DowFlow_App --distpath compiled_v8\dist
```

---

## ⚙️ Configuration Requise

```bash
pip install PyInstaller
```

---

## 📁 Structure Après Compilation

```
compiled_v8/
├── dist/
│   ├── DowFlow_App.exe          (10-15 MB)
│   ├── DowFlow_Playlist.exe     (10-15 MB)
│   ├── DowFlow_Franime.exe      (10-15 MB)
│   ├── DowFlow_Browser.exe      (10-15 MB)
│   └── DowFlow_Queue.exe        (10-15 MB)
├── build/               (temporaire)
├── specs/               (temporaire)
└── compile_v8.py
```

---

## ⏱️ Temps de Compilation Estimé

- Par fichier: ~2-3 minutes
- Total (5 fichiers): **~15-20 minutes**

---

## 🚀 Utilisation des Exécutables

```bash
# Lancer l'application web
compiled_v8\dist\DowFlow_App.exe

# Ou appeler les extracteurs directement
compiled_v8\dist\DowFlow_Playlist.exe https://...
```

---

## 📊 Avantages V8

✅ **Zéro dépendances Python** - Distribuer sans installation Python
✅ **Standalone** - Exécutable pur Windows 
✅ **Performance** - Légèrement plus rapide que Python
✅ **Distribution facile** - Copier/coller le dossier `dist/`
✅ **Modularité** - Chaque module est un exécutable séparé

---

## ⚠️ Limitations

- Taille: ~50-75 MB total (5 exécutables)
- Antivirus: Certains peuvent bloquer les .exe auto-générés
- Premier lancement: ~3 secondes (décompression)

---

## 🔄 Next Steps

1. Compiler les 5 fichiers
2. Tester les exécutables
3. Packager en ZIP pour distribution
4. Mettre en release GitHub V8

---

## 📝 Fichiers de Compilation

- `compile_v8.py` - Script Python (cross-platform)
- `compile_v8.bat` - Script Batch (Windows)

---

**Version**: V8 (Compilation)
**Date**: 31 Mai 2026
**Target**: Windows 10+
