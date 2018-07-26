#/usr/sbin
export PATH="/usr/sbin:$PATH"

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

