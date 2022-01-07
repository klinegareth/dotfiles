#!/bin/sh
export ZDOTDIR=$HOME/.config/zsh
export PATH=/home/kline/.local/share/gem/ruby/3.0.0/bin:$PATH
# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

# Colors
autoload -Uz colors && colors

# Defaults
export EDITOR='nvim'
export BROWSER='firefox'

# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source
zsh_add_file "zsh-exports"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"
zsh_add_file "colors"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_plugin "woefe/git-prompt.zsh"
zsh_add_plugin "zsh-users/zsh-completions"
zsh_add_plugin "marlonrichert/zsh-autocomplete"

# FZF 
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# Zoxide
eval "$(zoxide init zsh)"
