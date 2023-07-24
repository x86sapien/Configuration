bindkey '\' forward-char

export EDITOR='nvim'
export PATH=$PATH:/usr/local/go/bin
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOME/.local/bin":$PATH
export PATH=$HOME/ice9/tools/ghidra/build/dist/ghidra_10.4_DEV/bin:$PATH
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export LDFLAGS="-L/opt/homebrew/opt/qt@5/lib"
export CPPFLAGS="-I/opt/homebrew/opt/qt@5/include"
export PYTHONPATH=$PYTHONPATH:$GHIDRA_HOME/Ghidra/Processors
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/ice9/tools/flutter/bin"
export PKG_CONFIG_PATH="/opt/homebrew/opt/qt@5/lib/pkgconfig"

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
plugins=(git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
)


source $ZSH/oh-my-zsh.sh
source "$HOME/.cargo/env"

bindkey -s '^f' 'fzf | xargs nvim'
bindkey -s '^o' 'nvim **'
alias c="clear"
alias dev="cd ~/ice9/development/"
alias :q="exit"
alias p="open -a Preview"
alias exa="exa --long --tree"
alias tmux a="tmux attach-session"
alias burpsuite="open -a Burp\ Suite\ Community\ Edition ."
# user configuration
# custom aliases
alias ls"lsd"
alias vim="nvim"
alias ll="ls -la"; 
alias ..="cd ../";
alias ..l="cd ../ && ll";
alias pg="echo 'Pinging Google' && ping www.google.com";
alias dow="cd ~/Downloads/";
alias doc="cd ~/Documents/"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias npm-update="npx npm-check -u";
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

## git aliases
function gc { git commit -m "$@"; }
alias gcm="git checkout master";
alias gs="git status";
alias gpull="git pull";
alias gf="git fetch";
alias gfa="git fetch --all";
alias gf="git fetch origin";
alias gpush="git push";
alias gd="git diff";
alias ga="git add .";
alias gb="git branch";
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -B "
alias grf="git reflog";
alias grh="git reset HEAD~" # last commit
alias gac="git add . && git commit -a -m "
alias gsu="git gpush --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"

## checkout a new remote branch (exists remote, not locally)
## git checkout -b LocalName origin/remotebranchname (checkout a remote branch)

## npm aliases
alias ni="npm install";
alias nrs="npm run start -s --";
alias nrb="npm run build -s --";
alias nrd="npm run dev -s --";
alias nrt="npm run test -s --";
alias nrtw="npm run test:watch -s --";
alias nrv="npm run validate -s --";
alias rmn="rm -rf node_modules";
alias flush-npm="rm -rf node_modules && npm i && echo NPM is done";

## yarn aliases
alias yar="yarn run"; # lists all the scripts we have available
alias yab="yarn build"; # build dist directory for each package
alias yal="yarn lint:fix"; # format source and auto-fix eslint issues
alias yac="yarn commit"; # open a Q&A prompt to help construct valid commit messages
alias yas="yarn start";
alias yasb="yarn storybook:start"; # start storybook
alias yat="yarn test"; # run the unit tests*
alias yatw="yarn test:watch"; #run the unit tests for files changed on save

## docker
alias dockerstop='docker-compose stop'
alias dockerrestart='docker-compose restart'
alias dockerup='docker-compose up -d'
alias dockerrm='docker-compose rm --all'

## other aliases
alias zshrc='vim ~/.zshrc'
alias topten="history | commands | sort -rn | head"
alias myip="curl http://ipecho.net/plain; echo"
alias dirs='dirs -v | head -10'
alias usage='du -h -d1'
alias u="source ~/.zshrc"
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "
alias md="mkdir "
alias ..='cd ..'
alias ...='cd ../..'

export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:/usr/local/opt/go/libexec/bin:$PATH"
export PATH="/opt/homebrew/lib/opam/4.13.0/bin:$PATH"
export PATH="${HOME}/.cargo/bin:${PATH}"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/share/dotnet:$PATH"
eval "$(rbenv init - zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
