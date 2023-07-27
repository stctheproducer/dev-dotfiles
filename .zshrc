setopt HIST_IGNORE_SPACE

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
DEFAULT_USER=$(whoami)

CASE_SENSITIVE="true"

HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(docker git ssh-agent npm)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

[[ $(uname) = "Linux" ]] && export PNPM_HOME="$HOME/.local/share/pnpm"

[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

export FLYCTL_INSTALL="/$HOME/.fly"

# If you come from bash you might have to change your $PATH.
export PATH=$PNPM_HOME:$FLYCTL_INSTALL/bin:$HOME/bin:/usr/local/bin:$PATH

pgrep -x gpg-agent > /dev/null || gpg-agent --daemon

export GPG_TTY=$(tty)

#############################################################
#                       PLUGINS                             #
#############################################################
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
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zinit light zdharma-continuum/fast-syntax-highlighting
# Spaceship plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# zsh-fzf-history-search
zinit ice lucid wait'0'
zinit light joshskidmore/zsh-fzf-history-search

# Git flow
zinit light petervanderdoes/git-flow-completion

# dotbare
zinit light kazhala/dotbare

# Spaceship custom sections
# React
zinit light "spaceship-prompt/spaceship-react"
spaceship add react

# Vue
zinit light "spaceship-prompt/spaceship-vue"
spaceship add vue

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
export HISTFILE=/dc/shellhistory/.zsh_history
export PROMPT_COMMAND='history -a'
sudo chown -R $(whoami) /dc/shellhistory

export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"

# Aliases
source $HOME/dotfiles/.aliases