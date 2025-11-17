export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
CASE_SENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(
  git 
  docker 
  kubectl
)

source $ZSH/oh-my-zsh.sh

# alias
alias zs_config="code ~/.zshrc"
alias zs_reload="source ~/.zshrc"
alias omyzs_config="code ~/.oh-my-zsh"
alias ss_config="code ~/.spaceshiprc"
alias gt="gotestsum -- -tags=dynamic"
alias py="python3"
alias pip="pip3"
alias git="git -P"
alias git_delete_branchs="git branch | grep -v "main" | xargs git branch -D"

alias go_test_cover_file="go test -coverprofile=coverage.out"
alias go_read_cover_file="go tool cover -html=coverage.out"

alias kube="kubectl"
alias kube_use_prod_cluster="kubectl config use-context gke-production"
alias kube_use_dev_cluster="kubectl config use-context gke-development"
alias kube_use_old_prod_cluster="kubectl config use-context old-gke-production"
alias golint="golangci-lint"

eval "$(direnv hook zsh)"
eval "$(fnm env)"

source "/opt/homebrew/opt/spaceship/spaceship.zsh"

export GOROOT="/opt/homebrew/Cellar/go/1.25.3/libexec"
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

export GOTESTSUM_FORMAT="testdox"
export GOTESTSUM_FORMAT_ICONS="octicons"
export GO111MODULE="on"

export C_INCLUDE_PATH=$(brew --prefix)/include
export LIBRARY_PATH=$(brew --prefix)/lib

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust \
    zsh-users/zsh-autosuggestions \
    zdharma/fast-syntax-highlighting \
    zsh-users/zsh-completions

### End of Zinit's installer chunk

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
