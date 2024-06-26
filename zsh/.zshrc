[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

# Path to your oh-my-zsh installation.
export ZSH=/home/frigge/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git)

# User configuration

export PATH="/home/frigge/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/frigge/bin:/home/frigge/.local/bin:/snap/bin"
# export MANPATH="/usr/local/man:$MANPATH"

#source $ZSH/oh-my-zsh.sh

source ~/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell
antigen apply

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
alias bc="bc -lq"
alias tmux="tmux -2"
# export TERM=xterm-256color
export TERM=xterm-kitty

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='kak'
else
	export EDITOR='nvim'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(/opt/homebrew/bin/brew shellenv)
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/Users/frigge/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/Users/frigge/.local/bin:/Users/frigge/.antigen/bundles/robbyrussell/oh-my-zsh/lib:/Users/frigge/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git:/Users/frigge/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip:/Users/frigge/.antigen/bundles/zsh-users/zsh-syntax-highlighting:/usr/local/opt/fzf/bin:/opt/local/bin:/Library/TeX/texbin

(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

rcd() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}

notes() {
    session="notes"
    folder=~/syncthing-documents/org/
    if [[ -z $TMUX ]]; then
        if tmux list-sessions | grep $session; then
            tmux attach -t $session
        else
            cd $folder
            tmux new-session -s $session
        fi
    else
        if tmux list-sessions | grep $session; then
            tmux switch-client -t $session
        else
            cd $folder
            tmux new-session -ds $session
            tmux switch-client -t $session
        fi
    fi
}

bindkey -s "^p" "project^M"
bindkey -s "^k" "notes^M"
function iplot {
    cat <<EOF | gnuplot
    set terminal pngcairo enhanced font 'Fira Sans,10'
    set autoscale
    set samples 1000
    set output '|kitty +kitten icat --stdin yes'
    set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"#fdf6e3" behind
    plot $@
    set output '/dev/null'
EOF
}
source '/home/frigge/.cargo/env'
