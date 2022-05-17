# ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# user environment variables
# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# editor and viewers
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

# make QT use Wayland
export QT_QPA_PLATFORM=wayland
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"

# FZF settings
export FZF_DEFAULT_OPTS='
    --exact
    --reverse
    --border=rounded
    --cycle
    --height=50%
    --info=hidden
    --prompt=➜\
    --pointer=➜
    --color=16
    --color=bg:-1,bg+:#332E41
    --color=fg:#DADAE8,fg+:#DADAE8
    --color=hl:#DADAE8,hl+:#A4B9EF
    --color=prompt:#F2CECF
    --color=pointer:-1
    --color=gutter:-1
    --color=marker:-1
    --color=spinner:-1
    --color=border:#A4B9EF'

# buku colors
export BUKU_COLORS='hEhhf'

# define configuration file location for ripgrep
export RIPGREP_CONFIG_PATH='/home/loki/.config/ripgrep/ripgreprc'
