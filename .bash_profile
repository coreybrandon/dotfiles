if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

# Add the following line to your ~/.bash_profile:
  [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR='vim'
export CLICOLOR=1