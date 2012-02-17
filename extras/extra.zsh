# otherwise oh my zsh is unbearably slow
setopt NO_cdable_vars

# oh my zsh stuff
ZSH_THEME="arrow"
plugins=(git)

alias drupaltag="ctags --langmap=php:.engine.inc.module.theme.install.php.test --php-kinds=cdfi --languages=php --recurse"
alias ack="ack-grep"
alias mmv="noglob zmv -W"

# ack options
export ACK_OPTIONS="--type-set php=.php,.module,.inc,.install"
export ACK_PAGER="less -R"

# add ruby gems
export PATH="/var/lib/gems/1.8/bin:$HOME/bin:$PATH"

export EDITOR="vim"
