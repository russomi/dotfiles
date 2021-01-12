# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

fpath=(/usr/local/share/zsh-completions $fpath)

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# https://apple.stackexchange.com/a/358873
# Mac Setup Guide - https://sourabhbajaj.com/mac-setup/
[ -x /usr/libexec/path_helper ] && eval $(/usr/libexec/path_helper -s)
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add site packages to the PATH
# export PATH=$HOME/Library/Python/3.7/lib/python/site-packages/:$HOME/Library/Python/3.7/bin:$PATH
# export PATH=$HOME/Library/Python/3.8/bin:$PATH

# OpenSSL said to do this
# export PATH=/usr/local/opt/openssl@1.1/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# do not show <aws:aws-homesite-home-master>
export SHOW_AWS_PROMPT=true

# Do not use client side paging with awscli2
export AWS_PAGER=""

# Do not create __pycache__
# https://stackoverflow.com/a/61341025
export PYTHONDONTWRITEBYTECODE=false

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
#plugins=(git aws kube-ps1 docker)
plugins=(git aws kube-ps1 docker colored-man-pages colorize pip python brew osx zsh_reload poetry)

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
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias awsconfig="code ~/.aws/config"
alias awscreds="code ~/.aws/credentials"
alias okta-aws="code ~/.okta-aws"
alias gitconfig="code ~/.gitconfig"
alias set-git-email="git config user.email"
alias set-global-git-email="git config --global user.email"
alias export-aws-credentials='eval $(aws2-wrap --profile ${AWS_PROFILE} --export)'
alias okta-login='unset AWS_SESSION_TOKEN; unset AWS_ACCESS_KEY_ID; unset AWS_SECRET_ACCESS_KEY; okta-awscli --okta-profile ${AWS_PROFILE} --profile ${AWS_PROFILE}'
alias show-path="echo $PATH | tr ':' '\n'"

# Python
# alias python="/usr/bin/python3"
# alias pip="/usr/bin/pip3"

# Install code on path via preferences
# /usr/local/bin/code
alias code="/usr/local/bin/code"

# https://jneate.github.io/technology/2019/11/14/changing-the-default-editor-of-kubectl-edit.html
export KUBE_EDITOR="code -w"

# alias to project directory
alias p="~/Documents/Projects"
# alias reload="echo 'Sourcing .zshrc ...'; source ~/.zshrc"
alias reload="restart-shell"
alias restart-shell="echo 'restarting shell ...'; exec $SHELL"
alias cls="clear"
# alias v11sbx="aws-profile v11sandbox; aws-login"
# alias v11np="aws-profile v11nonprod; aws-login"

#export DEFAULT_USER="hpe_mrusso"

# python cert stuff
# find /usr/**/*.pem
# export SSL_CERT_FILE=/usr/local/etc/openssl@1.1/cert.pem
# export SSL_CERT_FILE=/usr/local/aws-cli/botocore/cacert.pem
# export REQUESTS_CA_BUNDLE=${SSL_CERT_FILE}

# For iterm2 shell integration
# curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# pyenv settings
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# GOPATH
export PATH="$HOME/go/bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/hpe_mrusso/.sdkman"
[[ -s "/Users/hpe_mrusso/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/hpe_mrusso/.sdkman/bin/sdkman-init.sh"
