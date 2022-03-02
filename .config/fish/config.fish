set fish_greeting ""
fish_vi_key_bindings

set fish_cursor_default line
set fish_cursor_insert line
set fish_cursor_replace_one line

# Spacefish settings
set SPACEFISH_PROMPT_ADD_NEWLINE false
set SPACEFISH_VI_MODE_PREFIX ""
set SPACEFISH_CHAR_SYMBOL "ʕ·ᴥ·ʔ-" 
set SPACEFISH_CHAR_COLOR_SUCCESS normal
set SPACEFISH_TIME_SHOW true


# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

#Aliases 
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME" 
alias dcommit='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME commit -am' 
alias dstatus="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME status" 
alias dpush="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME push" 
alias dpull="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME pull" 
alias xmonadconf="nvim ~/.xmonad/xmonad.hs"
alias xinitconf="nvim ~/.xinitrc"
alias alacrittyconf="nvim ~/.config/alacritty/alacritty.yml"
alias conkyconf="nvim ~/.conkyrc"
alias userchrome="nvim ~/.mozilla/firefox/*.default-release/chrome/userChrome.css"
alias fishconf='nvim ~/.config/fish/config.fish -c "set syntax=bash"'
alias zshconf='nvim ~/.zshrc'
alias conkylconf="nvim ~/.config/conky/conkyL.conf"
alias conkyrconf="nvim ~/.config/conky/conkyR.conf"
alias i3conf="nvim ~/.config/i3/config"
alias gnotes="nvim ~/.notes.txt -c 'Go 60%x50%'"
alias todo='nvim ~/Sync/.todo.txt -c "setlocal foldmethod=indent" -c "Go 60%x50% | highlight Normal ctermbg=NONE guibg=NONE | highlight LineNr ctermbg=NONE guibg=NONE | highlight SignColumn ctermbg=NONE guibg=NONE"'
alias n="nvim"
alias gitfix='git commit --amend --no-edit'
alias ls="exa -1 -l -@ -a --icons --git"
