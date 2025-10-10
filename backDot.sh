#!/bin/bash

# Dotfiles backup script
# Backs up configuration files to ~/dotfiles/Backups and commits to git

DOTFILES_DIR="$HOME/dotfiles"
BACKUP_DIR="$DOTFILES_DIR/Backups"

# Color output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting dotfiles backup...${NC}"

# Create backup directories if they don't exist
mkdir -p "$BACKUP_DIR"/{awesome,newsboat,shell}

# Copy files
echo -e "${GREEN}Copying files...${NC}"

cp ~/.bashrc "$BACKUP_DIR/bashrc"
cp ~/.config/awesome/rc.lua "$BACKUP_DIR/awesome/rc.lua"
cp ~/.newsboat/urls "$BACKUP_DIR/newsboat/urls"
cp ~/.tmux.conf "$BACKUP_DIR/tmux.conf"
cp ~/NewFont.sh "$BACKUP_DIR/shell/NewFont.sh"
cp ~/newsURL.sh "$BACKUP_DIR/shell/newsURL.sh"

# Navigate to dotfiles directory
cd "$DOTFILES_DIR" || exit 1

# Check if there are any changes
if [[ -z $(git status -s) ]]; then
    echo -e "${BLUE}No changes detected. Backup is up to date!${NC}"
    exit 0
fi

# Add all changes
git add Backups/

# Commit with timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
git commit -m "Backup dotfiles: $TIMESTAMP"

echo -e "${GREEN}Backup completed and committed!${NC}"
echo -e "${BLUE}Run 'cd ~/dotfiles && git push' to push changes to remote.${NC}"
