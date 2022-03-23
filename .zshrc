# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install


# The following lines were added by compinstall
zstyle :compinstall filename '/home/manjar/.zshrc'

autoload -Uz compinit
compinit
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# End of lines added by compinstall


# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/powerlevel10k/powerlevel10k.zsh-theme
# clone https://github.com/zsh-users/zsh-autosuggestions/
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh



###################
###   ALIASES   ###
###################

alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -lh --color=auto --group-directories-first'
alias lsa='ls -A'
alias pactree='pactree -c'
alias pm='pacman' 
alias remove='rm -rfv'
alias svim='sudo vim'
alias trash='cd ~/.local/share/Trash/files'
## alias h='--help'

alias rsync='rsync -vahP'

# Software
alias b='btop'
alias bm='bash ~/bookmarker.sh'
alias f='fastfetch'
alias m='mpd && ncmpcpp'
alias n='ncmpcpp'
alias p='pulsemixer'
#alias r='ranger'
alias timesh='sudo nohup timeshift-gtk &'
alias v='vim'
alias ani-cli='ani-cli -v'

# Network
alias hotS59='nmcli device wifi connect S59 password novoadoogee' 
alias myip='curl http://ipecho.net/plain; echo'
alias ping='ping -c 5 archlinux.org'



#####################
###   FUNCTIONS   ###
#####################

##########
### Make Dir & Enter it

mkcd(){ mkdir -p "$1"&& cd "$1" }


##########
### GIT

alias gits='git status'
alias gita='git add'
alias gitc='git commit -m'
# Bad practice :))
acp(){
	git add .
	git commit -m "$1"
	git push
}


# Keybindings
bindkey "^d" backward-word
bindkey "^f" forward-word
#bindkey ^w delete previous word
#^b back one char
#^f forward one char
#^h delete previous char
#^t takes char forward
#^k take comd onward and memorizes it
#^7 undo 
#^s freezes

# For emacs
# export PATH=$PATH:~/.emacs.d/bin
