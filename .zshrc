# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$PATH:~/Documents/Sdks/connectiq-sdk/bin
export PATH=$PATH:/opt/wavebox.io/wavebox

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

# Stop timeout ( long running commands )
unset TMOUT

# aliases
alias tmux="TERM=screen-256color-bce tmux"
alias vi="nvim"
alias dots="cd ~/dot-files && ls -la"
alias wayne="cd ~/Documents/wayne-world && ls -la"
alias frank="cd ~/Documents/frankschmidt902 && ls -la"
alias platform="cd ~/Documents/wayne-world/assessment-platform && ls -la"
alias mra="cd ~/Documents/wayne-world/mra && ls -la"
alias mra-api="cd ~/Documents/wayne-world/mra-api && ls -la"
alias la="cd ~/Documents/wayne-world/leadership-academy && ls -la"
alias gss="cd ~/Documents/GSS/GSS-CA && ls -la"
alias lad="cd ~/Documents/wayne-world/LAD && ls -la"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Red hat openshift.
if [ -f '~/openshift-install' ]; then . '~/openshift-install'; fi
if [ -f '~/oc' ]; then . '~/oc'; fi
if [ -f '~/kubectl' ]; then . '~/kubectl'; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/meatwad/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/meatwad/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/meatwad/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/meatwad/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Set fzf installation directory path
export FZF_BASE=~/.fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:~/.android-sdk-macosx/platform-tools/
