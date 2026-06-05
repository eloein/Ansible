#!/bin/bash

ROLE_FILES="roles/kde/files"

# Create structure
mkdir -p "$ROLE_FILES/config"
mkdir -p "$ROLE_FILES/local"

# Config files
for f in \
  plasma-org.kde.plasma.desktop-appletsrc \
  plasmashellrc \
  kwinrc \
  kdeglobals \
  plasmarc \
  kscreenlockerrc \
  kcminputrc \
  kglobalshortcutsrc \
  kxkbrc \
  breezerc \
  khotkeysrc \
  powermanagementprofilesrc \
  ksmserverrc; do
  [ -f "$HOME/.config/$f" ] && cp "$HOME/.config/$f" "$ROLE_FILES/config/$f"
done

# Config dirs
for d in gtk-3.0 gtk-4.0 latte; do
  [ -d "$HOME/.config/$d" ] && cp -r "$HOME/.config/$d" "$ROLE_FILES/config/"
done

# Local/share dirs
for d in "plasma/plasmoids" "color-schemes" "aurorae/themes" "wallpapers" "konsole" "kwin/scripts" "kwin/effects"; do
  [ -d "$HOME/.local/share/$d" ] && mkdir -p "$ROLE_FILES/local/$d" && cp -r "$HOME/.local/share/$d/." "$ROLE_FILES/local/$d/"
done

echo "Done. Files copied to $ROLE_FILES"
