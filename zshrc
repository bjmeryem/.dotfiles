export df=~/.dotfiles
# Personal space
source $df/.personal

# From the exercise folder
alias nrm="norminette -R CheckForbiddenSourceHeader ft_*.c"

# From the project folder
alias nrmall="norminette -R CheckForbiddenSourceHeader */ft_*.c"

alias vimrc="vi ~/.vimrc"
alias rc="vi ~/.zshrc"
alias src="source ~/.zshrc"
alias gcc="gcc -Wall -Wextra -Werror"
alias cc="cc -Wall -Wextra -Werror"
alias out='./a.out'
alias gacp="git add . && git commit -m $USER && git push"

alias linkvz="ln -s $df/zshrc ~/.zshrc && ln -s $df/vimrc ~/.vimrc"
alias pullrc="cd $df && git pull && cd -"

alias movetogoinfre="curl -fsSL https://raw.githubusercontent.com/hakamdev/MOVE_TO_GOINFRE/main/installation.sh | zsh"
alias installcformat="pip install --user c-formatter-42"
alias installomz='sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
alias installvimplug="curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
alias installvimcake="git clone --depth=1 git@github.com:ChuOkupai/vimcake.git ~/.vimcake && cd ~/.vimcake && make install && cd -"
alias installvundle="git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
alias installhomebrew="curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh"
alias installminimoulinette="git clone https://github.com/khairulhaaziq/mini-moulinette.git ~/.mini-moulinette"
alias setgitignore="git config --global core.excludesFile ~/.gitignore"
alias mini="~/.mini-moulinette/mini-moul.sh"

export L=Library
export PY=Python
export SP=site-packages
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/$L/Frameworks/$PY.framework/Versions/3.8/lib/python3.9/$SP:$PATH
export PATH=/$L/Frameworks/$PY.framework/Versions/3.9/lib/python3.9/$SP:$PATH
export PATH=$HOME/$L/$PY/3.8/lib/python/$SP:$PATH
export PATH=$HOME/$L/$PY/3.9/lib/python/$SP:$PATH
export PATH=$HOME/$L/$PY/3.8/bin:$PATH
export PATH=$HOME/$L/$PY/3.9/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode disabled  # disable automatic updates
# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
plugins=(git)

echo "Welcome, $USER!"
cd ~/code
source $ZSH/oh-my-zsh.sh
bash $HOME/move_to_goinfre.sh
