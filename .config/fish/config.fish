#Greeting 
set fish_greeting ""

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

#Aliases 
alias dotfiles "/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME add" 
complete dotfiles --wraps "/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME add" -f 
alias xmonadconf "nvim ~/.xmonad/xmonad.hs"
alias xinitconf "nvim ~/.xinitrc"
alias conkyconf "nvim ~/.conkyrc"
alias userchrome "nvim ~/.mozilla/firefox/4kfdya0u.default-release/chrome/userChrome.css"
alias fishconf 'nvim ~/.config/fish/config.fish -c "set syntax=bash"'
alias conkylconf "nvim ~/.config/conky/conkyL.conf"
alias conkyrconf "nvim ~/.config/conky/conkyR.conf"
alias i3conf "nvim ~/.config/i3/config"
alias gnotes "nvim ~/.notes.txt -c 'Go 60%x50%'"
alias todo 'nvim ~/.todo.txt -c "setlocal foldmethod=indent" -c "Go 60%x50% | highlight Normal ctermbg=NONE guibg=NONE | highlight LineNr ctermbg=NONE guibg=NONE | highlight SignColumn ctermbg=NONE guibg=NONE"'

#Prompt
function fish_prompt --description 'custom fish prompt'
  set_color ffecdd
  printf (pwd)
    echo -e ''
  echo "ʕ·ᴥ·ʔ- "
end

function fish_right_prompt --description 'custom fish right prompt'
  set_color ffecdd
    date '+[%H:%M]'
end

