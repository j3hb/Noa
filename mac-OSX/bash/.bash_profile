# Making CLI and 'ls' having colors
alias ls='ls -Gfh'
export CLICOLOR=true
export LSCOLORS=exfxbxdxcxegedabagacad

# Setting prompt order
export PS1='\u@\h:\w $ '

# Setting git bash completion
[ -f ~/.git-bash-completion.sh ] && . ~/.git-bash-completion.sh

