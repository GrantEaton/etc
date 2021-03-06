export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec

export EDITOR=vim
export EDITOR="/usr/bin/vim"
alias v='vim'
alias g='git'
alias b='cd ..; ls'
alias n='Node'
alias p='python'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias profile='vim ~/.profile'
function cd {       #automatically ls after cd#
    builtin cd "$@" && ls -F
}
