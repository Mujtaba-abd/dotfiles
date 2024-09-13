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
