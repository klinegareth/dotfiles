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

## Plugin Settings ##

# zsh-autocomplete
	zstyle ':autocomplete:*' recent-dirs zoxide
	# cdr:  Use Zsh's `cdr` function to show recent directories as completions.
	# no:   Don't show recent directories.
	# zsh-z|zoxide|z.lua|z.sh|autojump|fasd: Use this instead (if installed).
	# ⚠️ NOTE: This setting can NOT be changed at runtime.

	zstyle ':autocomplete:*' widget-style menu-complete
	# complete-word: (Shift-)Tab inserts the top (bottom) completion.
	# menu-complete: Press again to cycle to next (previous) completion.
	# menu-select:   Same as `menu-complete`, but updates selection in menu.
	# ⚠️ NOTE: This setting can NOT be changed at runtime.

	zstyle ':autocomplete:*' fzf-completion yes
	# no:  Tab uses Zsh's completion system only.
	# yes: Tab first tries Fzf's completion, then falls back to Zsh's.
	# ⚠️ NOTE: This setting can NOT be changed at runtime and requires that you
	# have installed Fzf's shell extensions.

	# Add a space after these completions:
	zstyle ':autocomplete:*' add-space \
		executables aliases functions builtins reserved-words commands

# FZF 
	[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
	[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# Zoxide
	eval "$(zoxide init zsh)"
