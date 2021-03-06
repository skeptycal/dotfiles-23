export GOPATH=$HOME/Git/go
export PATH="$PATH:$HOME/.rvm/bin:$GOPATH/bin:$HOME/.gem/ruby/2.3.0/bin" # Add RVM to PATH for scripting

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/coleman/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# X
if [[ -z $DISPLAY ]]; then
  startx -- -ardelay 200 -arinterval 25
fi

# Ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias ls='ls --color=auto'
alias la='ls -al'
alias emacs='emacsclient -nw -c -a ""'
alias edit='emacsclient -nw -c -a ""'
alias startx='startx -- -ardelay 200 -arinterval 40'

export ALTERNATE_EDITOR=""
export EDITOR='emacsclient -nw -c a ""'
export MAIL=/var/spool/mail/coleman
export BROWSER=vimb
export LD_LIBRARY_PATH=/usr/local/lib

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# PROMPT
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE="true"
export GIT_PS1_SHOWSTASHSTATE="true"
export GIT_PS1_SHOWUNTRACKEDFILES="true"
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS="true"
precmd () { __git_ps1 "%F{magenta}%n@%m %F{white}%~%f " " $ " "(%s)" }

# AUTOSUGGESTIONS
source ~/Git/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'

# bind key
bindkey '^ ' autosuggest-accept

# completion stuff
autoload -U compinit && compinit
zstyle ':completion:*' menu select

# COLOR
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
