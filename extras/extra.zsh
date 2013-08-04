# otherwise oh my zsh is unbearably slow
setopt NO_cdable_vars

autoload zmv

# oh my zsh stuff
ZSH_THEME="arrow"
plugins=(git)

alias drupaltag="ctags --langmap=php:.engine.inc.module.theme.install.php.test --php-kinds=cdfi --languages=php --recurse"
alias ack="ack-grep"
alias mmv="noglob zmv -W"

# ack options
export ACK_OPTIONS="--type-set php=.php,.module,.inc,.install"
export ACK_PAGER="less -R"

export AWS_IAM_HOME="$HOME/Tools/IAMCli-1.5.0"
export AWS_CREDENTIAL_FILE="$AWS_IAM_HOME/aws-credential.prop"

export PATH="/opt/boxen/nvm/v0.8.8/bin:/var/lib/gems/1.8/bin:$HOME/bin:$AWS_IAM_HOME/bin:$HOME/Tools/AWS-ElasticBeanstalk-CLI-2.3.1/eb/linux/python2.7:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
alias setjdk16='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setjdk17='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'

#export GRAILS_OPTS="-server -Xmx2048M -Xms1024M -XX:PermSize=512m -XX:MaxPermSize=1024m -Dfile.encoding=UTF-8 -DAPP_JDBC_CLASS=com.mysql.jdbc.Driver -DAPP_JDBC_USER=root -DAPP_JDBC_PASS= -DAPP_JDBC_URL=jdbc:mysql://localhost:13306/id_dev -Dcom.ngs.env=davidg -Dgrails.serverUrl=http://localhost:8080/interpreter-direct"
export GRAILS_OPTS="-server -Xmx2048M -Xms1024M -XX:PermSize=512m -XX:MaxPermSize=1024m -Dfile.encoding=UTF-8 -Dcom.ngs.app.jdbc.class=com.mysql.jdbc.Driver -Dcom.ngs.app.jdbc.user=root -Dcom.ngs.app.jdbc.pass= -Dcom.ngs.app.jdbc.url=jdbc:mysql://localhost:13306/id_dev -Dcom.ngs.env=davidg -Dgrails.serverUrl=http://localhost:8080/interpreter-direct"
# New relic conf
#export GRAILS_OPTS="$GRAILS_OPTS -javaagent:/Users/dgibb/Projects/interpreter-direct/lib/newrelic.jar -Dnewrelic.environment=development"

export EDITOR="vim"
bindkey -v

hash -d log=/var/log
hash -d doc=/usr/share/doc

# speed up git autocomplete
__git_files () { 
    _wanted files expl 'local files' _files     
}
