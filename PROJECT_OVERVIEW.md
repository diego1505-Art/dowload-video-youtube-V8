# 🎬 DowFlow - YouTube & Anime Downloader

**Ultimate Media Download Tool** - Télécharger depuis YouTube, Franime.fr, et bien d'autres!

---

## 📦 Versions Disponibles

### 🟢 **V6** - Production Stable  
**Repository**: [dowload-video-youtube-V6](https://github.com/diego1505-Art/dowload-video-youtube-V6)

- Dernière version stable
- Prête pour production
- Support complet de tous les extracteurs

**Fichiers**:
- `app.py` - Application Flask
- `playlist.py` - Engine de téléchargement
- `franime_extractor.py` - Extracteur Franime
- `browser_extractor.py` - Extracteur navigateur

---

### 🟠 **V7** - Améliorations Majeures  
**Repository**: [dowload-video-youtube-V7](https://github.com/diego1505-Art/dowload-video-youtube-V7)

**3 Nouveaux Modules d'Amélioration**:

1. **`logger_setup.py`** - Logging Centralisé
   - Remplace tous les `print()` par logging professionnel
   - Sortie console + fichier
   - Logs dans `logs/dowflow_YYYYMMDD_HHMMSS.log`

2. **`download_queue.py`** - Queue + Rate Limiting
   - Téléchargements séquentiels
   - Retry automatique avec exponential backoff
   - Gestion des erreurs 429/503

3. **`file_utils.py`** - Cleanup + Intégrité
   - Suppression des fichiers orphelins (`.unknown_video`, `.part`, etc.)
   - Vérification SHA256
   - Logging des opérations

**Avantages V7**:
- ✅ Logging structuré et traçable
- ✅ Rate limiting pour éviter les 429
- ✅ Nettoyage automatique
- ✅ Vérification d'intégrité SHA256

---

### 🔴 **V8** - Compilation Executable  
**Status**: 🔨 En préparation (Compilation)

**5 Exécutables Windows (.exe)**:
```
DowFlow_App.exe          (Application Web Flask)
DowFlow_Playlist.exe     (Engine de téléchargement)
DowFlow_Franime.exe      (Extracteur Franime)
DowFlow_Browser.exe      (Extracteur navigateur)
DowFlow_Queue.exe        (Queue + Rate limiting)
```

**Scripts de Compilation**:
- `compile_v8.py` - Script Python universal
- `compile_v8.bat` - Script Batch Windows

**Avantages V8**:
- ✅ Distribution sans Python requis
- ✅ Exécutables standalone Windows
- ✅ Installation zéro-dépendances

---

## 🚀 Démarrage Rapide

### Installer (V6/V7)
```bash
pip install -r requirements.txt
python app.py
```

Accéder à: `http://127.0.0.1:5001`

### Compiler (V8)
```bash
python compile_v8.py
# ou
compile_v8.bat
```

Récupérer exécutables dans: `compiled_v8/dist/`

---

## 🛠️ Architecture

```
app.py (Flask Server)
│
├─ playlist.py
│  ├─ logger_setup.py (V7)
│  ├─ file_utils.py (V7)
│  ├─ download_queue.py (V7)
│  └─ config.py
│
├─ franime_extractor.py (Franime.fr)
│  └─ logger_setup.py (V7)
│
└─ browser_extractor.py (Generic)
```

---

## 📊 Comparaison des Versions

| Feature | V6 | V7 | V8 |
|---------|----|----|-----|
| Logging structuré | ❌ | ✅ | ✅ |
| Rate limiting | ❌ | ✅ | ✅ |
| Cleanup auto | ❌ | ✅ | ✅ |
| Intégrité SHA256 | ❌ | ✅ | ✅ |
| Exécutables .exe | ❌ | ❌ | ✅ |
| Prêt production | ✅ | ✅ | 🔨 |

---

## 📚 Documentation

### Par Version:
- [V6 - Production](README.md)
- [V7 - Améliorations](V7_IMPROVEMENTS.md) *(À créer)*
- [V8 - Compilation](V8_COMPILATION_GUIDE.md)

### Scripts:
- `start.bat` - Démarrer l'app
- `debug.bat` - Mode debug
- `compile_v8.bat` - Compiler V8

---

## 📋 Caractéristiques

### Extracteurs Supportés
- ✅ YouTube (`youtube.com`, `youtu.be`)
- ✅ Franime (`franime.fr`) - Avec interception réseau
- ✅ Sites génériques (yt-dlp)
- ✅ HLS / DASH streams

### Format de Sortie
- 📹 Video (MP4, MKV, WebM)
- 🎵 Audio (MP3, M4A)
- 🎬 Qualités: best, ultra, qhd, high, medium, low

### Téléchargeurs Rapides
- ⚡ aria2c (si disponible)
- 🌐 yt-dlp engine
- 🎮 Playwright (interception réseau)

---

## 🔒 Sécurité & Fiabilité

- ✅ Retry automatique avec exponential backoff
- ✅ Vérification d'intégrité SHA256
- ✅ Gestion des erreurs 429/403/503
- ✅ Impersonation Cloudflare (yt-dlp)
- ✅ Cleanup des fichiers orphelins
- ✅ Logs traçables pour debug

---

## 📈 Roadmap

### V7: 
- ✅ Logging
- ✅ Queue + Rate limiting
- ✅ Cleanup + Intégrité

### V8:
- 🔨 Compilation exécutables
- ⏳ Tests des .exe
- ⏳ Packaging en ZIP
- ⏳ Release GitHub

### V9+ (Futur):
- Dashboard web avancé
- Multi-processing parallèle
- Cache persistant
- Support proxy automatique
- Webhooks & notifications

---

## 🤝 Contribuer

Les contributions sont bienvenues! 
- V6: Stabilité & fiabilité
- V7: Amélirations & robustesse
- V8: Distribution & accessibilité

---

## 📄 License

Apache 2.0 License - Voir [LICENSE](LICENSE)

---

## 👤 Auteur

**diego1505-Art** - Développement DowFlow

**GitHub**: https://github.com/diego1505-Art/

---

## 📞 Support

- GitHub Issues: Signaler un bug
- Discussions: Poser une question
- Wiki: Consulter la documentation

---

**Version**: V8 (En développement)  
**Date Mise à Jour**: 31 Mai 2026  
**Status**: 🟢 Production (V6) | 🟠 Améliorations (V7) | 🔨 Compilation (V8)

