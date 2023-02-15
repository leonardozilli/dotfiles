# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#aliases file
if [ -e $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

#bash functions file
if [ -e $HOME/.bash_functions ]; then
	source $HOME/.bash_functions
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc

stty werase \^H

export EDITOR=vim;

. /etc/profile.d/vte.sh

#vitasdk
export VITASDK=/usr/local/vitasdk
export PATH="$VITASDK/bin:$PATH" # add vitasdk tool to $PATH
export PATH="$HOME/bin:$PATH"

#perl
PATH="/home/leo/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/leo/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/leo/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/leo/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/leo/perl5"; export PERL_MM_OPT;

