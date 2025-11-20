#===============================
# PATH Setup
#===============================
USER_LOCAL="$HOME/.local/bin"
USER_BIN="$HOME/bin"
USER_SCRIPTS="$HOME/Desktop/scripts"

USR_LOCAL_BIN="/usr/local/bin"
USR_LOCAL_SBIN="/usr/local/sbin"
USR_BIN="/usr/bin"
USR_SBIN="/usr/sbin"

TEXLIVE_BIN="/usr/local/texlive/2021/bin/x86_64-linux"

export PATH="$USER_LOCAL:$USER_BIN:$USER_SCRIPTS:$USR_LOCAL_BIN:$USR_LOCAL_SBIN:$USR_BIN:$USR_SBIN:$TEXLIVE_BIN"

export MANPATH="$MANPATH:/usr/local/texlive/2021/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2021/texmf-dist/doc/info"

#===============================
# Oh My Zsh
#===============================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="adan"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  command-not-found
  autojump
  asdf
)

source $ZSH/oh-my-zsh.sh

#===============================
# History Configuration
#===============================
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=20000
setopt hist_expire_dups_first  # Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups        # Ignore duplicated commands
setopt hist_ignore_space       # Ignore commands starting with space
setopt hist_verify             # Show command with history expansion before running
setopt share_history           # Share history across sessions

#===============================
# Key Bindings
#===============================
bindkey '^H' backward-kill-word    # Ctrl-H deletes previous word
# bindkey '^I' forward-word        # Optional: uncomment to move forward by word
bindkey 'ù' autosuggest-accept    # Accept suggestion with 'ù'

#===============================
# Editor
#===============================
export EDITOR='nvim'

#===============================
# Completion & Globbing
#===============================
setopt AUTO_LIST              # Auto list choices on ambiguous completion
setopt COMPLETE_IN_WORD       # Complete from any part of a word
setopt extended_glob          # Extended globbing

#===============================
# Aliases
#===============================
alias lt='ls --human-readable --size -1 -S --classify'
alias ..='cd ..'
alias ls='ls --group-directories-first --color=tty'
alias open='xdg-open'
alias dhdk='cls ~/Desktop/dhdk/'
alias clip='xclip -sel c <'
alias hgrep='history | grep '
alias trun='gnome-terminal -- sh -c'
alias vim='nvim'
alias chromium='flatpak run com.github.Eloston.UngoogledChromium'

#===============================
# Functions
#===============================
cl() {
    local new_directory="$*"
    if [ $# -eq 0 ]; then
        new_directory="$HOME"
    fi
    builtin cd "$new_directory" && ls
}

#===============================
# Terminal integration
#===============================
printf "\033]7;file://%s%s\033\\" "${HOSTNAME}" "$(/usr/libexec/vte-urlencode-cwd)"
