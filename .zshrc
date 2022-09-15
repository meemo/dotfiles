export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="obraun"

HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="false"

DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias fixmouse="sudo modprobe -r psmouse && sudo modprobe psmouse"
