# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH=/Users/yuriytuz/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="ekhabarov"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  tmux
  tmuxinator
  kube-ps1
  nvm
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

DEFAULT_USER="yuriytuz"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(direnv hook zsh)"
eval "$(fasd --init auto)"
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export GOBIN=$GOPATH/bin

eval "$(direnv hook zsh)"
#export PATH=$PATH:$HOME/bin
#export EDITOR='subl' -w


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=28'

# if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT

# zsh tmux settings
# ZSH_TMUX_AUTOSTART='true'

export CHECKOUT_REPO_PATH=/Users/yuriytuz/Dev/cashier
export CHECKOUT_HTTP_INTERNAL_PORT=8081
export CHECKOUT_HTTPS_INTERNAL_PORT=8082
# export CHECKOUT_URI=https://checkout-yuriy-boldcommerce.fwd.wl
export CHECKOUT_URI=https://yuriy-local.bold.ninja
export CHECKOUT_HOSTNAME=yuriy-local.bold.ninja

alias fixDockerTime='docker run --rm --privileged centos:6.7 date -s "`date`"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias phpLint='./vendor/bin/php-cs-fixer fix -v'
alias vim='nvim'
# alias rtest='./vendor/bin/codecept run --debug'
alias rtest='./vendor/bin/phpunit --debug'
alias cl='clear'
alias lunch='curl -s "https://cdn.contentful.com/spaces/6qqte9wlq16o/entries?access_token=bab0ec81f61331d6e29f5c0e3164d8d506c5ae6957088607c0125a71124177c7" | jq .items[0].fields.$(date +%A | tr '[:upper:]' '[:lower:]')'
alias lunchw='curl -s "https://cdn.contentful.com/spaces/6qqte9wlq16o/entries?access_token=bab0ec81f61331d6e29f5c0e3164d8d506c5ae6957088607c0125a71124177c7" | jq .items[0].fields'
alias dc='docker-compose'
alias fw='while forward 8081 yuriy-local; do date >> ~/forwardhq.log; sleep 1; done'
alias k='kubectl'
alias kcg='kubectl config get-contexts'
alias kcc='kubectl config use-context'
alias gg='ginkgo'
alias bold-encrypt='_bold_encrypt(){ echo "GOBOLD_KEY=$BOLD_ENCRYPTION_KEY bold encrypt $1"; GOBOLD_KEY=$BOLD_ENCRYPTION_KEY bold encrypt $1 };_bold_encrypt'
alias bold-decrypt='_bold_decrypt(){ echo "GOBOLD_KEY=$BOLD_ENCRYPTION_KEY bold decrypt $1"; GOBOLD_KEY=$BOLD_ENCRYPTION_KEY bold decrypt $1 };_bold_decrypt'

# POWERLEVEL9K_MODE='awesome-patched'

# Disable dir/git icons
# POWERLEVEL9K_HOME_ICON=''
# POWERLEVEL9K_HOME_SUB_ICON=''
# POWERLEVEL9K_FOLDER_ICON=''

# DISABLE_AUTO_TITLE="true"

# POWERLEVEL9K_VCS_GIT_ICON=''
# POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
# POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
# # POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
# # POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
# POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
##POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs virtualenv rbenv rvm time)

#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m.%y}"

# POWERLEVEL9K_STATUS_VERBOSE=false
export DEFAULT_USER="$USER"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Feed the output of fd into fzf
#fd --type f | fzf

# Setting fd as the default source for fzf
 export FZF_DEFAULT_COMMAND='ag -g ""'

 export PATH=/usr/local/php5/bin:$PATH
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yuriytuz/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yuriytuz/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yuriytuz/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yuriytuz/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


export WEBHOOK_APP_HOST=mayhem-yuriy.bold.ninja
