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


export PATH="$HOME/.local/bin:$PATH"


export EDITOR='nvim'


setopt AUTO_LIST              # Auto list choices on ambiguous completion
setopt COMPLETE_IN_WORD       # Complete from any part of a word
setopt extended_glob          # Extended globbing
unsetopt nomatch


HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=20000

setopt hist_expire_dups_first  # Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups        # Ignore duplicated commands
setopt hist_ignore_space       # Ignore commands starting with space
setopt hist_verify             # Show command with history expansion before running
setopt share_history           # Share history across sessions


bindkey '^H' backward-kill-word
bindkey 'ù' autosuggest-accept


alias ..='cd ..'
alias ls='ls --group-directories-first --color=tty'
alias lt='ls --human-readable --size -1 -S --classify'
alias open='xdg-open'
alias hgrep='history | grep '
command -v nvim >/dev/null 2>&1 && alias vim='nvim'

cl() {
    local new_directory="$*"
    if [ $# -eq 0 ]; then
        new_directory="$HOME"
    fi
    builtin cd "$new_directory" && ls
}

