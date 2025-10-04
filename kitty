# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# CodeWhisperer pre block. Keep at the top of this file.
# [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-23.jdk/Contents/Home
# export JAVA_HOME=/usr/libexec/java_home
export ANDROID_HOME="$HOME/Library/Android/sdk"
alias emulator="$ANDROID_HOME/emulator/emulator"


export PATH=/usr/local/opt/coreutils/libexec/gnubin:$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  tmux
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  zsh-fzf-history-search
  vi-mode
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -z "$ZSH_NAME" ] && [ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

alias R=ramda

autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

zmodload -i zsh/complist

export PATH=$PATH:/Applications/WezTerm.app/Contents/MacOS:$(go env GOPATH)/bin

alias nodejs="node"
alias ls='ls -G'
alias vi='/usr/local/bin/nvim'
alias zshcf='nvim ~/.zshrc'
alias wezcf='nvim ~/.config/wezterm'
alias nvimcf='nvim ~/.config/nvim/init.vim'
alias tmuxcf='nvim ~/.config/tmux/.tmux.conf'
alias zshexec='. ~/.zshrc'

alias sed=gsed
# alias brew="arch -arm64 brew"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export EDITOR='nvim'

# [[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# CodeWhisperer post block. Keep at the bottom of this file.
# [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$PATH:${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
# ZSH_THEME="powerlevel10k/powerlevel10k"

export KUBERNETES_CLI_PATH=/Users/L60GM4R9PR/Public
export PATH=$KUBERNETES_CLI_PATH:$PATH
export N2C_CLI_PATH=/Users/L60GM4R9PR/Public
export PATH=$N2C_CLI_PATH:$PATH
export HELM_PATH=/Users/L60GM4R9PR/Public
export PATH=$HELM_PATH:$PATH


export PATH="/opt/homebrew/opt/avr-gcc@10/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/avr-gcc@10/lib"
export NODE_JS_BIN_PATH=$HOME/.nvm/versions/node/v18.20.2/bin/node
export APPIUM_JS_PATH=$HOME/.nvm/versions/node/v18.20.2/lib/node_modules/appium/build/lib/main.js
export NUBES_DEV_ADDRESS="10.115.55.207:8000"
export NUBES_PRODUCTION_ADDRESS="10.116.213.22:8000"
export NUBES_GATEWAY_ADDRESS="$NUBES_PRODUCTION_ADDRESS"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql-client/lib/pkgconfig"
export PATH="/opt/homebrew/opt/mysql-client@8.4/bin:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/L60GM4R9PR/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# bun completions
[ -s "/Users/L60GM4R9PR/.bun/_bun" ] && source "/Users/L60GM4R9PR/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"


function run_env() {
  if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo "Virtual environment created."
  fi
  source venv/bin/activate
  echo "Virtual environment activated."
  if [ ! -f "requirements.txt" ]; then
    echo "# Requirements file for Python project" > requirements.txt
  fi
  pip install -r requirements.txt

}

function init_python() {
  project_dir=$(basename "$PWD")
  echo "Setting up Python environment for $project_dir"

  if [ ! -f "setup.py" ]; then
      setup_content="\
    from setuptools import setup, find_packages \

    setup(
        name='${project_dir}',
        version='0.1.0',
        packages=find_packages(include=['${project_dir}', '${project_dir}.*']),
        install_requires=[],
    )
    "
    echo "$setup_content" > setup.py
  fi

  if [ ! -f "__init__.py" ]; then
    echo "" > __init__.py
  fi
  if [ ! -f "main.py" ]; then
    echo "print('Hello World')" > main.py
  fi

  run_env
}

function _pip_install() {
  if ! grep -q "$1==" requirements.txt ; then
    pip install $1 && pip freeze | grep "$1==" >> requirements.txt
    if ! grep -q "$1==" requirements.txt ; then
      pip uninstall -y $1
    fi
  fi

}

function _pip_uninstall() {
  pip uninstall -y $1
  sed -i '' "/$1==/d" requirements.txt
}

function pip_install() {
  run_env
  for arg in "$@"; do
    _pip_install "$arg"
  done

  echo "Installing dependencies from requirements.txt"
  pip install -r requirements.txt
}

function pip_uninstall() {
  run_env
  for arg in "$@"; do
    _pip_uninstall "$arg"
  done
}

alias init_python='init_python'
alias pip_install='pip_install'
alias pip_uninstall='pip_uninstall'
alias premove='pip_uninstall'
alias padd='pip_install'
alias python2='/Library/Frameworks/Python.framework/Versions/2.7/bin/python2'
alias python='/opt/homebrew/bin/python3'

[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.
export GOOGLE_API_KEY=AIzaSyAmXOEAWFcL8UFpurO1OSk6qxZrLFPg6SA

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
