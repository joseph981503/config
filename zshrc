POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_DISABLE_RPOMPT="true"
POWERLINE_FULL_CURRENT_PATH="true"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/joseph/.oh-my-zsh
#export PATH=$PATH:$HOME/AnacondaProjects/bin
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

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
plugins=(git zsh-autosuggestions z extract)

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"
fpath=(~/myfns $fpath)
autoload -U zfinit
zfinit
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias setting="vim ~/.zshrc"
alias refresh="source ~/.zshrc"
#alias python='python3'
alias hh="cd ~;clear;"
alias ..='cd ~;'
alias h="cd ~;"
alias cl="clear"
alias mkcd='_(){ mkdir $1; cd $1;  }; _'
source ~/ys.zsh-theme.sh
source ~/.bash_profile
alias plantool="ssh -i ~/.ssh/id_rsa ptuser@pt.auto-dns.funstore.biz"
alias aws="sudo ssh -i ~/desktop/ms300k-tokyo.pem -l ec2-user 18.179.73.188"
alias clip="ssh yhhsu@clip.csie.org"
alias clip2="ssh yhhsu@clip2.cs.nccu.edu.tw"
alias express="express --view=ejs --git"
kk1(){
    echo -n "81f504fa0a502bb600529c53f4a5274c:7dd84e68ef172401670d10b108d67016" | base64
}
kk2(){
    curl -u "81f504fa0a502bb600529c53f4a5274c:7dd84e68ef172401670d10b108d67016" --data-urlencode "grant_type=client_credentials" https://account.kkbox.com/oauth2/token
}
