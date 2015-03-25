# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Use case-sensitive completion.
CASE_SENSITIVE="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras node)

source $ZSH/oh-my-zsh.sh

# User configuration
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
alias less="/usr/share/vim/vim73/macros/less.sh"
alias gmm="git missing master"
alias gmd="git missing develop"

extract_aac_from_youtube() {
	ffmpeg -i $1 -vn -acodec copy $1.m4a
}

autoload -U compinit promptinit
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

export PATH="node_modules/.bin:$HOME/node_modules/.bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"

export HISTSIZE=20000
export SAVEHIST=20000
export HISTFILE=$HOME/.history
export WORDCHARS="*?_[]~&;:!#$%^(){}<>"
export MANPAGER=/usr/bin/less
export PAGER=cat

export SELENIUM_JAR=/usr/local/bin/selenium-server-standalone.jar

# go
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin

# Keybindings
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Prompt
CLICOLOR=1
LSCOLORS=ExFxBxDxCxegedabagacad
compinit
promptinit

# Git prompt
# git clone https://github.com/olivierverdier/zsh-git-prompt.git .zsh/git-prompt
# ZSH_THEME_GIT_PROMPT_NOCACHE=1 # disable status caching
source ~/.zsh/git-prompt/zshrc.sh
PROMPT='%n@%B%m%~%b$(git_super_status) %# '

# This used to work as a plugin?
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
