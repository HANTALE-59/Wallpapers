#!/usr/bin/env bash
# Usage:
#   ./patch_wallpaper.sh <repo_link> [theme_name]

set -e

REPO="$1"
THEME="$2"
TARGET_DIR="/home/shared/Pictures/Wallpapers/Hyde"

if [ -z "$REPO" ]; then
  echo "❌ Usage: $0 <repo_link> [theme_name]"
  exit 1
fi

TMPDIR=$(mktemp -d)
cd "$TMPDIR"

echo "🔽 Clonage du repo $REPO ..."
git clone --no-checkout "$REPO" repo
cd repo

git sparse-checkout init --cone
git sparse-checkout set "Configs/.config/hyde/themes"
git checkout main 2>/dev/null || git checkout master 2>/dev/null

# auto-détection du nom du thème si non fourni
if [ -z "$THEME" ]; then
  THEME=$(ls Configs/.config/hyde/themes | head -n 1)
  echo "📛 Thème détecté : $THEME"
fi

SRC="Configs/.config/hyde/themes/$THEME/wallpapers"

if [ ! -d "$SRC" ]; then
  echo "❌ Pas trouvé : $SRC"
  exit 1
fi

mkdir -p "$TARGET_DIR/$THEME"
cp -r "$SRC"/* "$TARGET_DIR/$THEME/"

echo "✅ Wallpapers du thème \"$THEME\" copiés vers $TARGET_DIR/$THEME"

# nettoyage
cd /
rm -rf "$TMPDIR"
