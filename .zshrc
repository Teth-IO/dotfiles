# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# source prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# general
# vi mode
bindkey -v

# paquets nix
path+=/.nix-profile/bin

# activate dir colors
#test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# suffix aliases
alias -s md=nvim
alias -s gmi=nvim
alias -s png=imv
alias -s jpg=imv
alias -s pdf=zathura

########################################
# man page colors
########################################
export LESS_TERMCAP_mb=$'\E[1;34m'     	# begin bold
export LESS_TERMCAP_md=$'\E[1;34m'     	# begin blink
export LESS_TERMCAP_me=$'\E[0m'        	# reset bold/blink
export LESS_TERMCAP_so=$'\E[30;35;100m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        	# reset reverse video
export LESS_TERMCAP_us=$'\E[1;35m'     	# begin underline
export LESS_TERMCAP_ue=$'\E[0m'        	# reset underline

########################################
# syntax highlighting
########################################

# declaring the variable
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=default,bold'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=default,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=default,bold'

# setup fzf with keybindings
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# setup tty colors
if [ "$TERM" = "linux" ]; then
	printf %b '\e[40m' '\e[8]' # set default background to color 0 'moonfly-bg'
	printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'moonfly-fg'
	printf %b '\e]P01e1e28'    # redefine 'black'          as 'moonfly-bg'
	printf %b '\e]P8575268'    # redefine 'bright-black'   as 'moonfly-comment'
	printf %b '\e]P1e38c8f'    # redefine 'red'            as 'moonfly-red'
	printf %b '\e]P9e38c8f'    # redefine 'bright-red'     as '#c49ea0'
	printf %b '\e]P2b1e3ad'    # redefine 'green'          as 'moonfly-green'
	printf %b '\e]PAb1e3ad'    # redefine 'bright-green'   as '#9ec49f'
	printf %b '\e]P3ebddaa'    # redefine 'brown'          as 'moonfly-yellow'
	printf %b '\e]PBebddaa'    # redefine 'bright-brown'   as 'moonfly-orange'
	printf %b '\e]P4a4b9ef'    # redefine 'blue'           as 'moonfly-purple'
	printf %b '\e]PCa4b9ef'    # redefine 'bright-blue'    as '#a5b4cb'
	printf %b '\e]P5e5b4e2'    # redefine 'magenta'        as 'moonfly-pink'
	printf %b '\e]PDe5b4e2'    # redefine 'bright-magenta' as '#c49ec4'
	printf %b '\e]P6bee4ed'    # redefine 'cyan'           as 'moonfly-cyan'
	printf %b '\e]PEbee4ed'    # redefine 'bright-cyan'    as '#9ec3c4'
	printf %b '\e]P7c3bac6'    # redefine 'white'          as 'moonfly-fg'
	printf %b '\e]PFdadae8'    # redefine 'bright-white'   as '#f0f0f0'
	clear
fi

# setup starship prompt
eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
