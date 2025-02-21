#!/usr/bin/env bash

# This script can be used to install my dotfiles from scratch, or to update existing ones.
# Requires git to be installed.

set -eu
set -o pipefail

REPO="https://github.com/meemo/dotfiles"
DOTFILES_DIR="$HOME/dotfiles"
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

safe_copy() {
    src="$1"
    dest="$2"
    
    # Skip if source doesn't exist
    [ ! -e "$src" ] && return
    
    # Create backup if destination exists
    if [ -e "$dest" ]; then
        mkdir -p "$BACKUP_DIR"
        mv "$dest" "$BACKUP_DIR/$(basename "$dest")"
    fi
    
    cp -R "$src" "$dest"
}

cleanup() {
    if [ -d "$DOTFILES_DIR.tmp" ]; then
        rm -rf "$DOTFILES_DIR.tmp"
    fi
}
trap cleanup EXIT

main() {
    if ! command -v git >/dev/null 2>&1; then
        echo "Error: git is required but not installed"
        exit 1
    fi

    if [ -d "$DOTFILES_DIR" ]; then
        if [ -d "$DOTFILES_DIR/.git" ]; then
            echo "Updating existing dotfiles..."
            cd "$DOTFILES_DIR"
            git pull
        else
            echo "Found existing dotfiles directory without git"
            mv "$DOTFILES_DIR" "$DOTFILES_DIR.old"
            git clone "$REPO" "$DOTFILES_DIR"
        fi
    else
        echo "Cloning dotfiles repository..."
        git clone "$REPO" "$DOTFILES_DIR"
    fi

    echo "Installing dotfiles..."
    cd "$DOTFILES_DIR"
    
    for file in .??*; do
        # Skip git files
        case "$file" in
            .git|.gitignore|.gitmodules) continue ;;
        esac
        
        safe_copy "$file" "$HOME/$file"
    done

    echo "Dotfiles installation complete"
    if [ -d "$BACKUP_DIR" ]; then
        echo "Backup of existing files created in: $BACKUP_DIR"
    fi
}

main
