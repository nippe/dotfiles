# Path to your oh-my-zsh installation.
export ZSH=/Users/nippe/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="Powerline"
#ZSH_THEME="bira"
#ZSH_THEME="theunraveler"
ZSH_THEME="bureau"
#ZSH_THEME="norm"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git sublime brew autojump atom docker docker-compose git-hubflow nvm)

# User configuration

export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GIT_PAGER="less -F -X"

alias lsl="ls -la"
alias adev="cd ~/dev/acast/"
alias gti="git"
alias cls="clear"
alias grep="ggrep"
alias at="atom"
alias att="at ."
alias piong="ping"
alias poing="ping"

makedirAndCdIntoIt() {
	mkdir $1
	cd $1
}
alias mcd=makedirAndCdIntoIt

cleanAndReinstallNpmPackages(){
	echo "Removing node_modules..."
	rm -rf node_modules
	echo "Cleaning npm cache..."
	npm cache clean
	echo "Reinstalling node_modules..."
	npm install
}
alias npmcr=cleanAndReinstallNpmPackages


cleanAndReinstallNpmPackagesDevDep(){
	echo "Removing node_modules..."
	rm -rf node_modules
	echo "Cleaning npm cache..."
	npm cache clean
	echo "Reinstalling node_modules..."
	npm install
}
alias npmcrd=cleanAndReinstallNpmPackagesDevDep

timedCurl() {
	curl -o /dev/null -s -w %{time_total}\\n $1
}
alias tcurl=timedCurl

alias dval="eval \"$(docker-machine env default)\""

alias o="open"

# Martins azure cli atuocomplete
autoload -U compinit
compinit
zstyle ':completion:*' menu select=2

fpath=(~/.zsh/azurecompletion $fpath)

# /Martins azure cli atuocomplete

# Start up nvm
. ~/.nvm/nvm.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
