shopt -s histappend

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
# eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# zlib
export LDFLAGS="-L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/bzip2/include"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/sqlite/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/sqlite/lib/pkgconfig"

# export LDFLAGS="-L/usr/local/opt/zlib/lib"
# export CPPFLAGS="-I/usr/local/opt/zlib/include"

alias ls='ls --color'
alias grep='grep --color=auto'
export EDITOR='vim'
  
# User Configuration
export GOPATH=~/go
export PATH=/usr/local/go/bin:$PATH
export GOBIN=$GOPATH/bin

# Git Prompt
function gitPrompt {
  command -v __git_ps1 > /dev/null && __git_ps1 "(%s)"
}

yellow='\[\e[0;33m\]'
green='\[\e[0;32m\]'
blue='\[\e[0;34m\]'
purple='\[\e[0;35m\]'
red='\[\e[0;31m\]'
white='\[\e[0;37m\]'

at="${white}"
name="${white}"
hostC="${white}"
pathC="${green}"
gitC="${white}"
pointerC="${green}"
textC="${white}"

# Root Zone
if [ "${UID}" -eq "0" ]; then
  name="${red}"
fi

export PS1="${name}\u${at}@${hostC}\h${pathC}\w${gitC}\$(gitPrompt)${pointerC}▶ ${textC}"
