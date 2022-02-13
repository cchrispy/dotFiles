# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# Allow vim controls
bindkey -v

# Load !! without executing
setopt histverify

# Aliases (TODO - put in ~/.config/.aliases)
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias dl="cd ~/Downloads"

alias py="python3"
alias grep="grep --color=always -n"

alias v="vim"
alias l="ls -lhFG"
alias la="l -a"

alias gf="git fetch"
alias gb="git branch"
alias gs="git status"
alias gss="git status -s"
alias gcm="git add . && git commit -m"
alias gco="git checkout"
alias gstat="git rev-list --left-right --count"
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"

alias ppgg="ping 8.8.8.8 -c 12"


source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/.p10k.zsh.
[[ ! -f ~/.config/.p10k.zsh ]] || source ~/.config/.p10k.zsh

# https://github.com/junegunn/fzf
[ -f ~/.config/.fzf.zsh ] && source ~/.config/.fzf.zsh

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git --exclude node_modules --color=always'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--ansi"

eval "$(pyenv init -)"
