alias lt='ls --human-readable --size -1 -S --classify'
alias ..='cd ..'
alias open='xdg-open'
alias dhdk='cls ~/Desktop/dhdk/'

function cls() {
    new_directory="$*";
    if [ $# -eq 0 ]; then
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}

