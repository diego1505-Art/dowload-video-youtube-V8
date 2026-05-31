"""
Script de compilation V8 - Compile les 5 modules principaux en exécutables
Usage: python compile_v8.py
"""
import os
import sys
import subprocess
from pathlib import Path

# Liste des fichiers à compiler
FILES_TO_COMPILE = [
    ("app.py", "DowFlow_App"),
    ("playlist.py", "DowFlow_Playlist"),
    ("franime_extractor.py", "DowFlow_Franime"),
    ("browser_extractor.py", "DowFlow_Browser"),
    ("download_queue.py", "DowFlow_Queue"),
]

COMPILE_DIR = "compiled_v8"
OUTPUT_DIR = os.path.join(COMPILE_DIR, "dist")
WORK_DIR = os.path.join(COMPILE_DIR, "build")
SPEC_DIR = os.path.join(COMPILE_DIR, "specs")

def compile_file(filename: str, exe_name: str) -> bool:
    """Compile un fichier Python en exécutable."""
    if not os.path.exists(filename):
        print(f"❌ {filename} non trouvé")
        return False
    
    print(f"\n🔨 Compilation de {filename} -> {exe_name}.exe...")
    
    cmd = [
        sys.executable, "-m", "PyInstaller",
        "--onefile",
        "--name", exe_name,
        "--distpath", OUTPUT_DIR,
        "--workpath", WORK_DIR,
        "--specpath", SPEC_DIR,
        "--console",
        filename
    ]
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True)
        if result.returncode == 0:
            print(f"✅ {exe_name}.exe compilé avec succès")
            return True
        else:
            print(f"❌ Erreur lors de la compilation:")
            print(result.stderr)
            return False
    except Exception as e:
        print(f"❌ Exception: {e}")
        return False

def main():
    print("=" * 60)
    print("DowFlow V8 - Compilation des modules")
    print("=" * 60)
    
    # Créer les dossiers
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    os.makedirs(WORK_DIR, exist_ok=True)
    os.makedirs(SPEC_DIR, exist_ok=True)
    
    compiled_count = 0
    
    for filename, exe_name in FILES_TO_COMPILE:
        if compile_file(filename, exe_name):
            compiled_count += 1
    
    print("\n" + "=" * 60)
    print(f"✅ {compiled_count}/{len(FILES_TO_COMPILE)} fichiers compilés")
    print(f"📁 Exécutables dans: {OUTPUT_DIR}")
    print("=" * 60)

if __name__ == "__main__":
    main()
