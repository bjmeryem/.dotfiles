### My configs ###

# Github
export GITHUB_LOGIN=bjmeryem
export DOTFILES_REPO=git@github.com:$GITHUB_LOGIN/.dotfiles.git

export df=~/.dotfiles

# Personal space
source ~/$df/.personal

# مختصر للنورمينيت من داخل التمرين 
alias nrm="norminette -R CheckForbiddenSourceHeader"

# مختصر للنورمينيت من داخل المشروع
alias nrmall="nrm */ft_*.c"

alias vimrc="vi ~/.vimrc"
alias rc="vi ~/.zshrc"
alias src="source ~/.zshrc"
alias gcc="gcc -Wall -Wextra -Werror"
alias out='./a.out'
alias gacp="git add . && git commit -m $USER && git push"
alias movetogoinfre="curl -fsSL https://raw.githubusercontent.com/hakamdev/MOVE_TO_GOINFRE/main/installation.sh | zsh"
alias clonecformat="git clone https://github.com/cacharle/c_formatter_42 ~/.c_formatter_42"
alias installcformat="pip install --user c-formatter-42"
alias installomz='sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
alias linkvz="ln -s $df/.zshrc ~/.zshrc && ln -s $df/.vimrc ~/.vimrc"
alias pushrc="cd $df && ./push.sh && cd -"
alias pullrc="cd $df && git pull && cd -"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.9/lib/python3.9/site-packages/:$HOME/Library/Python/3.9/bin:$HOME/Library/Python/3.9/lib/python/site-packages"
export PATH="$PATH:$HOME/Library/Python/3.8/bin"
alias setvundle="git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
alias installvimcake="git clone --depth=1 git@github.com:ChuOkupai/vimcake.git ~/.vimcake && cd ~/.vimcake && make install && cd -"
alias setbrew="curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh"
alias installvimplug="curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
alias installminimoulinette="git clone https://github.com/khairulhaaziq/mini-moulinette.git ~/.mini-moulinette && echo 'alias mini=\"~/.mini-moulinette/mini-moul.sh\"' >> ~/.zshrc && source ~/.zshrc"

### Some commands:

echo "Welcome, $USER"
cd ~/code

### OMZ config

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode disabled  # disable automatic updates
# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
bash $HOME/move_to_goinfre.sh
alias mini="~/.mini-moulinette/mini-moul.sh"
