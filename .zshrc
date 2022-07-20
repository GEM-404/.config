# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#
ZSH_THEME="spaceship"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# source ~/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME="spaceship"
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/.local/bin:$PATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='nvim'
fi

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

# On-demand rehash
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

add-zsh-hook -Uz precmd rehash_precmd

esp() {

    espeak "Welcome to your terminal, Ephantus!!!"
}

# omz
alias zshconfig="geany ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"
alias tm='tmux'

# ls
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

# git
alias gcl='git clone --depth 1'
alias gco='git checkout'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

alias gadd='sh ~/lab/shell-files/gitsh.sh'

# aliases for faster changing of directories
alias cde='cd ~/Desktop/'
alias cdo='cd ~/Downloads/'
alias cdoc='cd ~/Documents/'
alias cpi='cd ~/Pictures/'
alias cvi='cd ~/Videos/'
alias cpu='cd ~/Public/'
alias cte='cd ~/Templates/'
alias ebs='cd ~/ebooks/'
alias cge='cd ~/gengetone/'

alias conf='cd ~/.config/'

alias walqi='wal -qi'
alias walsh='sh /opt/shell-files/wall_changer.sh'
alias wals='sh ~/lab/shell-files/wall_changer.sh'
alias ssn='shutdown now'
alias rbt='reboot'
alias rst='reset'


alias pacman='sudo pacman -S'
alias pacmany='sudo pacman -Sy'
alias update='sudo pacman -Syu'
alias pacrem='sudo pacman -Rcns'

alias nv='nvim'
alias py='python'
alias js='node'
alias ra='ranger'
alias lf='lfub'
alias nz='nvim ~/.zshrc'
alias ex='exit'

# Toggle led aliases
alias ledon='xset led named "Scroll Lock"'
alias ledoff='xset -led named "Scroll Lock"'

alias pyman='py /opt/pyfiles/pyman.py'
alias pyls='py /opt/pyfiles/dirman.py'
alias todo='bat ~/Desktop/todo.txt'

alias torem='nv ~/Desktop/todo.txt'
alias db='mysql -u root -A -p'

alias trains='sh /opt/shell-files/train.sh'
alias pword='git config credential.helper store'
alias lg='lazygit'

alias srst='cp ~/.zshrc .config/; rst ; szsh; '
alias grun='go run'
alias server='python -m http.server'
alias pserver='php -S localhost:8000 -t .'

# My own custom functions
mkcd() {
    test -d $1 | md $1
    cd $1
}

mkgcl() {
    mkcd $1
    gcl $2
}

vi() {
    mkcd $1
    nvim .
}

subs() {
    # the real command should look like this,
    # find $folder -type f -exec sed -i 's/$word_to_be_replaced/$word_to_replace/g' {}  \; -> where g stands for global I guess...
    find $1 -type f -exec sed -i "s/'$2'/'$3'/g" {} \;
}


cows() {} # function to print sth cool with cows...
# I might even implement it in python

alias szsh='source ~/.zshrc'
alias fex='sudo pkill Xorg -15'
alias toadd='cat >> ~/Desktop/todo.txt'

# Remove last item from my todo list...
alias remlst='sed -i "$d" ~/Desktop/todo.txt'
alias trnm='tmux rename-window'
alias trwm='tmux rename-window -t'
alias kllp='tmux kill-pane -a'

kllw() {
    while tmux next-window 2> /dev/null; do
        tmux kill-window
    done
}

miniwi() {
    figlet -f miniwi "$1"
}

miniwicp() {
    figlet -f miniwi "$1" | xclip -sel c
}

maxiwi() {
    figlet -f maxiwi "$1"
}

maxiwicp() {
    figlet -f maxiwi "$1" | xclip -sel c
}

alias usb='cd /run/media/masha/ECCD-06B0/'

# changing distro's themes with pywal
(cat ~/.cache/wal/sequences &)

# For TTY support, 
source ~/.cache/wal/colors-tty.sh

eval $(thefuck --alias)

[ -f ~/.font-files ] && source ~/.font-files

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# [ -z "$TMUX" ] && { tmux attach || exec tmux new-session && exit; }

tmuf() {
    trwm 1 editor
    trwm 2 main
    trwm 3 misc
    trwm 4 stuff
    trwm 5 ranger
    trwm 6 soth
    trwm 7 new
    trwm 8 custom
    trwm 9 last
}

# To not forget
# tmux neww
