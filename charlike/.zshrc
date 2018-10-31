# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Path to your oh-my-zsh installation.
  export ZSH="/home/charlike/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# It is set by `pure-prompt` by sindresorhus, install from AUR
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  git-extras
  docker
  encode64
  asdf
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Pure Prompt by Sindre Sorhus, install from AUR
autoload -U promptinit; promptinit
prompt pure

# ASDF Version Manager for Nodejs, Ruby, Elixir and more
# Docs:https://github.com/asdf-vm/asdf

# Not needed when you have Oh My Zsh plugin for it
#source $HOME/.asdf/asdf.sh
#source $HOME/.asdf/completions/asdf.bash

# Zsh plugins, installed through AUR
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

source ~/.aliases

export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nano
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export XDG_CONFIG_HOME="$HOME/.config"

export GIT_EDITOR="leafpad"
export GIT_CONFIG_USERNAME="tunnckoCore"
export GIT_CONFIG_USERMAIL="mameto2011@gmail.com"
export GIT_CONFIG_TOKEN="`echo 'generate new one'`"
export PYTHON=/usr/bin/python2

export NODE_CURRENT_VERSION=$(asdf current nodejs | sed 's/ .*//')
export NPM_GLOBAL_BIN="$ASDF_DIR/installs/nodejs/$NODE_CURRENT_VERSION/.npm/bin"
export PATH="$NPM_GLOBAL_BIN:./node_modules/.bin:$PATH"

# Only asks once, on first opened terminal, then everything is great.
eval `keychain --timeout 999999999999 --quiet --eval --nogui ~/.ssh/id_rsa`
