###############################################################################
######################### Custom alias definitions ############################
###############################################################################

# Colors
export COLOR_NC='\e[0m'             # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

export PAGER=less
export LESS_TERMCAP_mb=$'\E[01;33m'     # begin bold
export LESS_TERMCAP_md=$'\E[01;31m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'         # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;42;30m'  # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'         # reset reverse video
export LESS_TERMCAP_us=$'\E[01;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'         # reset underline
export GROFF_NO_SGR=1                   # for konsole and gnome-terminal

export GREP_COLOR="1;31"

# Make bash history global
export PROMPT_COMMAND="history -a; history -r"

# Colorised aliases
alias ll='grc ls -lFha --color'
alias la='ls -A --color'
alias l='grc ls -CFl --color'
alias dir='dir --color'
alias vdir='vdir --color'
alias ping="grc ping"
alias netstat="grc netstat"

# Short aliases
alias u='cd ..'
alias b='cd - &> /dev/null'
alias c='clear'
alias q='exit'
alias h='history'
alias s='subl'
alias g='grep'
alias p='ping -c 1'
alias m='meld'

# Git aliases
alias gits='git status'
alias gitd='git diff'
alias gitl='git log'
alias gitb='git branch'
alias gitm='git meld'

# Additional aliases
alias sudo='sudo ' # For using aliases by sudo
alias mc='EDITOR="subl" . /usr/lib/mc/mc-wrapper.sh'
alias shutdown='sudo shutdown -h now'
alias reboot='sudo reboot'
alias gitk='gitk_without_grabbing_console'
alias lsd='list_dirs_only'
alias untar='tar xvf'

# Functions
parse_git_branch() { # Show git branch
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

gitk_without_grabbing_console() { # Used as alias for gitk but with parameters
    \gitk $@ &> /dev/null &
}

list_dirs_only() { # Show only directories in the specified dir
	if [ ! -z $1 ]; then
		$1="$1/"
	fi
	grc ls -lad $1*/ --color
}

# Force color prompt
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# Set PS1
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;33m\]$(parse_git_branch)\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt
