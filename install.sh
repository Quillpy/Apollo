#!/bin/bash
set -e

echo "🔧 Installing dotfiles..."

DOTFILES_DIR="$(pwd)"

# Create config directory if missing
mkdir -p ~/.config

echo "📦 Installing KDE configs..."
cp -r $DOTFILES_DIR/plasma/* ~/.config/ 2>/dev/null

echo "📁 Installing Dolphin config..."
cp -r $DOTFILES_DIR/dolphin/* ~/.config/ 2>/dev/null

echo "💻 Installing terminal config..."
cp -r $DOTFILES_DIR/terminal/* ~/.config/ 2>/dev/null

echo "⭐ Installing shell configs..."
cp $DOTFILES_DIR/shell/.bashrc ~/
cp $DOTFILES_DIR/shell/starship.toml ~/.config/ 2>/dev/null

echo "🚀 Installing fastfetch config..."
cp -r $DOTFILES_DIR/fastfetch/* ~/.config/ 2>/dev/null

echo "✅ Done!"
echo "Restart KDE or log out/in to apply changes."
```
