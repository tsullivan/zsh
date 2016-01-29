# Custom additions:
# git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
# git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# git clone git@github.com:zsh-users/zsh-history-substring-search.git ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
# git clone https://github.com/olivierverdier/zsh-git-prompt.git .zsh/git-prompt

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Use case-sensitive completion.
CASE_SENSITIVE="true"

# Plugins
plugins=(git node)
# order of these matters
plugins+=(zsh-completions zsh-syntax-highlighting zsh-history-substring-search)

# Init oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Init git-prompt
source ~/.zsh/git-prompt/zshrc.sh

autoload -U +X compinit && compinit
autoload -U +X promptinit && promptinit

# Environment variables
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"
export HISTSIZE=20000
export SAVEHIST=20000
export HISTFILE=$HOME/.history
export WORDCHARS="*?_[]~&;:!#$%^(){}<>"
export MANPAGER=/usr/bin/less
export PAGER=cat
# export SELENIUM_JAR=/usr/local/bin/selenium-server-standalone.jar
export SSH_KEY_PATH="~/.ssh/id_rsa"
export JAVA_HOME=$(/usr/libexec/java_home)

# Aliases
alias x=gitx
alias v=gvim
alias less="/usr/share/vim/vim73/macros/less.sh"
alias kbn="cd ~/code/kibana"
alias mvl="cd ~/code/x-plugins/kibana/marvel"
alias xpl="cd ~/code/x-plugins"
alias gs1ns='git show -1 --name-status'

# Prompt
LSCOLORS=ExFxBxDxCxegedabagacad

# Git prompt
ZSH_THEME_GIT_PROMPT_NOCACHE=1 # disable status caching
PROMPT='%n@%B%m%~%b$(git_super_status) %# '

# zsh-history-substring-search
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# NVM / AVN
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
