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
alias ls='lsd -lh --group-dirs first' 
alias lsa='ls -A'
alias lst='ls -A --total-size'
alias lss='/bin/ls'
alias pactree='pactree -c'
alias pm='pacman' 
alias proxy='proxy.sh'
alias remove='rm -rfv'
alias trash='cd ~/.local/share/Trash/files'
## alias h='--help'

alias rsync='rsync -vahP'
alias ffprobe='ffprobe -hide_banner'

alias mictest='arecord -vvv -f dat /dev/null'

# Software
alias a='alsamixer'
alias b='btop'
alias f='fastfetch -l arch -c blue'
alias m='mpd && ncmpcpp'
alias n='ncmpcpp'
alias nm='nohup nm-applet --indicator &'
alias p='pulsemixer'
#alias r='ranger'
alias svim='sudo -E vim'
alias v='vim'
alias y='yay'

# Network
alias hotS59='nmcli device wifi connect S59 password novoadoogee' 
alias myip='curl http://ipecho.net/plain; echo'
alias ping='ping -c 5 archlinux.org'


#########################
###   CUSTOM SCRIPTS  ###
#########################

# bookmarker
alias bm='bash ~/github/00scripts/bookmarker.sh'

# JS Shell Script Example (/sbin)
# ~/github/00scripts/date.js
alias D='date.js'

# proxychains librewolf
alias proxy='bash ~/github/00scripts/proxy.sh'

# Custom Shell Script to get current WiFi Password
alias wifi='bash ~/github/00scripts/wifi-password.sh'



#####################
###   FUNCTIONS   ###
#####################

##########
### Make Dir & Enter it

mkcd(){ mkdir -p "$1"&& cd "$1" }
#cds(){ cd "$1"; ls }


##########
### GIT

alias gits='git status'
alias gita='git add'
alias gitc='git commit -m'
alias gitp='git push'

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
#^u delete from cursor til beginning
#^r backsearch commmand
