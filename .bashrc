alias ls='ls --color'
alias ls='ls -G'
alias grep='grep --color=auto'

export EDITOR='vim'
export TERM=xterm-256color
  
# User Configuration
export PATH=${PATH}:/usr/local/bin
export GOPATH=~/go

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
