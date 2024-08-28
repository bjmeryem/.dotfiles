### My configs ###


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Intra login
source ~/.login

# Github
export GITHUB_LOGIN=bjmeryem
export DOTFILES_REPO=git@github.com:$GITHUB_LOGIN/.dotfiles.git

export DOTFILES=~/.dotfiles
export df=$DOTFILES

alias vimrc="vi ~/.vimrc"
alias nrm="norminette -R CheckForbiddenSourceHeader"
alias nrmall="nrm */ft_*.c"
alias rc="vi ~/.zshrc"
alias src="source ~/.zshrc"
alias gcc="gcc -Wall -Wextra -Werror"
alias out='./a.out'
alias gacp="git add . && git commit -m $LOGIN && git push"
alias movetogoinfre="curl -fsSL https://raw.githubusercontent.com/hakamdev/MOVE_TO_GOINFRE/main/installation.sh | zsh"
alias clonecformat="git clone https://github.com/cacharle/c_formatter_42 ~/.c_formatter_42"
alias installcformat="pip install --user c-formatter-42"
alias installomz='sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
# LINKVZ: to link .vimrc and .zshrc, you don't need to use it, it serves in the next alias
alias linkvz="ln -s $DOTFILES/.zshrc ~/.zshrc && ln -s $DOTFILES/.vimrc ~/.vimrc"
alias linkdotfiles="gcl $DOTFILES_REPO $DOTFILES && rm ~/.vimrc ~/.zshrc && linkvz"
alias bcponly="cp -Rf $df/.zshrc ~/.zshrc_backup && cp -Rf $df/.vimrc ~/.vimrc_backup"
alias pushrc="cd $DOTFILES && ./push.sh && cd -"
alias pullrc="cd $DOTFILES && git pull && bcponly && cd -"
#alias pullc="cd ~/code && git pull && cd -"
#alias pushc="cd ~/code && gacp && cd -"
#alias tovogs="[ $VOGS ] && gcl $VOGS to_vogsphere && cp -Rf ex* to_vogsphere && cd to_vogsphere && gacp"
#alias push="tovogs && ls -R && nrmall && git remote -v | grep push && cd .. && rm -Rf to_vogsphere && echo '--> Success.'"
#alias clonecode="cd && gcl git@github.com:$LOGIN/code.git code && cd -"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.9/lib/python3.9/site-packages/:$HOME/Library/Python/3.9/bin:$HOME/Library/Python/3.9/lib/python/site-packages"
export PATH="$PATH:$HOME/Library/Python/3.8/bin"
alias setvundle="git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
alias installvimcake="git clone --depth=1 git@github.com:ChuOkupai/vimcake.git ~/.vimcake && cd ~/.vimcake && make install && cd -"
alias setbrew="curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh"
alias installvimplug="curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
alias installminimoulinette="git clone https://github.com/khairulhaaziq/mini-moulinette.git ~/.mini-moulinette && echo 'alias mini=\"~/.mini-moulinette/mini-moul.sh\"' >> ~/.zshrc && source ~/.zshrc"

### Some commands:

cd ~/code

### OMZ config


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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

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

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]] && then
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

bash $HOME/move_to_goinfre.sh
alias mini="~/.mini-moulinette/mini-moul.sh"
