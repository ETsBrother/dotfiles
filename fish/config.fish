if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx
  end
end

alias nv=nvim
alias md=mkdir
alias rd="rm -r"
alias please="sudo"
alias fucking="sudo"
alias where="which -a"

set -g theme_color_scheme base16-dark
set --universal nvm_default_version 17.9.1

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end
