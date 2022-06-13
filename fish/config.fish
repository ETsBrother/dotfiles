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
alias rd="rm -rf"

set -g theme_color_scheme base16-dark
