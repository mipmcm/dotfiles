# --- Apps ---
alias update='sudo apt update && sudo apt upgrade -y'
alias goget='sudo apt install -y'
alias snapup='snap install'
alias getridof='sudo apt remove && sudo apt purge'
alias fuckoff='sudo apt autoremove -y'
#
# --- System ---
#
alias later-gator='shutdown now'
alias snup='sudo snap refresh'
alias makex='chmod +x'
alias cp='cp -i -v'
alias hm='cd ~'
alias trash='trash-put'
alias empty='trash-empty'
alias ltrash='trash-list'
#
# --- Config ---
#
alias vimsh='vim ~/.bashrc'
alias vimal='vim ~/.bash_aliases'
alias vimawe='vim ~/.config/awesome/rc.lua'
alias vimawt='vim ~/.config/awesome/themes/copland/theme.lua'
alias vimvim='vim ~/.vimrc'
alias reload='source ~/.bashrc'
alias real='source ~/.bash_aliases'
alias newfont='bash NewFont.sh'
alias newsURL='bash newsURL.sh'
alias hunmov='python3 ~/.local/bin/fetch_movies.py'

#
# -- Things I Stole from EvanHahn --
#
mkcd () {
  \mkdir -p "$1"
  cd "$1"
}

alias ,,='cd ..'
alias ..l='cd .. && ls -a'
