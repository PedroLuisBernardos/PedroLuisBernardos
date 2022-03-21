# PS1="\[\e[33m\]Pedro \@ \[\e[36m\] -> \w$(tput sgr0)$(__git_ps1 " (%s)")\n$";
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[33m\]Pedro \@ \[\e[36m\] -> \w$(tput sgr0) \[\e[91m\]\$(parse_git_branch)\[\e[00m\]\n$";

LS_COLORS="di=1;35:ex=4;31:*.mp3=1;32;41";

alias pedro='cd /mnt/c/Users/pedro'
alias c='clear'
alias p='git add .; git commit -m "update"; git push'
alias v='source venv/bin/activate'
alias f='flask run'
alias m='make'
alias u='git pull'
alias style='pycodestyle'
alias haskell='ghci'
alias prolog='swipl'
