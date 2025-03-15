# ~/.bashrc with colors inspired by 256_noir.vim theme

# Function to get git branch
git_branch() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
        echo " ($branch)"
    fi
}

# Function to display path with ~ for home directory
display_path() {
    echo "${PWD/#$HOME/~}"
}

# 256_noir.vim inspired color scheme for bash prompt:
# - username and hostname: light white (255, #eeeeee)
# - @ symbol and directory: medium gray (245, #8a8a8a)
# - git branch: light white (255, #eeeeee)
PROMPT_COMMAND='PS1="\[\033[38;5;255m\]\u\[\033[38;5;245m\]@\[\033[38;5;255m\]\h\[\033[00m\] \[\033[38;5;245m\]$(display_path)\[\033[00m\]\[\033[38;5;255m\]$(git_branch)\[\033[00m\]> "'

# Add colors to common commands by default
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Quick ls
alias l='ls -CF --color=auto'
alias ll='ls -alF --color=auto'
alias lll='ls -lah --color=auto'

# Kitty terminal ssh
alias ksh='kitten ssh'

# Enable bash command history with timestamp
export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=20000

# Add ~/dev/notes/notes to PATH if it exists
if [ -d "$HOME/dev/notes/notes" ]; then
    export PATH="$HOME/dev/notes/notes:$PATH"
fi

# Enable bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Append to history file, don't overwrite
shopt -s histappend

# Check window size after commands
shopt -s checkwinsize

# Auto CD (like fish)
shopt -s autocd 2>/dev/null

# Enable ** glob pattern
shopt -s globstar 2>/dev/null

# Case-insensitive globbing
shopt -s nocaseglob 2>/dev/null

# Set the terminal title to include current directory
case "$TERM" in
xterm*|rxvt*)
    set_title() {
        local title=${PWD/#$HOME/\~}
        echo -ne "\033]0;${title}\007"
    }
    PROMPT_COMMAND="$PROMPT_COMMAND; set_title"
    ;;
*)
    ;;
esac
