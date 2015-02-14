# Files will be created with these permissions:
# files 644 -rw-r--r-- (666 minus 022)
# dirs  755 drwxr-xr-x (777 minus 022)
umask 022

#-------------------------------------------------------------
if is_osx; then
  alias ls="command ls -hFG"

  # directory color to cyan for mac since dark blue is impossible to see
  LSCOLORS='gx'
  export LSCOLORS
else
  alias ls="ls --color"
fi

alias ll="ls -l --group-directories-first"
alias la='ls -Al'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'

# Easier navigation: .., ..., -
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

# tmux is finicky and we need 256 colors
alias tmux='tmux -2'

# File size
alias fs="stat -f '%z bytes'"
alias df='df -kTh'
alias du='du -kh'       # Makes a more readable output.

# Recursively delete `.DS_Store` files
alias dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# Aliasing eachdir like this allows you to use aliases/functions as commands.
alias eachdir=". eachdir"

# Create a new directory and enter it
function md() {
  mkdir -p "$@" && cd "$@"
}
