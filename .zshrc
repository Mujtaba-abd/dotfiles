# Lines configured by zsh-newuser-install
fastfetch
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mojtaba/.zshrc'

fpath+=($HOME/.zsh/pure)

autoload -U promptinit; promptinit
prompt pure

autoload -Uz compinit
compinit
# End of lines added by compinstall

#alias code='codium'

#git aliases
alias gc='git clone'
alias gs='git status'
alias ga='git add'
alias gp='git push'



# Created by `pipx` on 2024-09-21 14:07:22
export PATH="$PATH:/home/mojtaba/.local/bin"
export PATH="$PATH:/opt/mssql-tools18/bin"
