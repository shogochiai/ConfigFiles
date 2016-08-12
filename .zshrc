#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
# User:
#   Shogo Ochiai <shogo1104@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file

export PATH=$HOME/.nodebrew/current/bin:$PATH

# postgre
export PGDATA=/usr/local/var/postgres

# Scala
export PATH=$PATH:~/bin
export PATH=$PATH:/usr/local/src/scala/bin
export SCALA_HOME=/usr/local/src/scala
export CONSCRIPT_HOME="$HOME/.conscript"
export CONSCRIPT_OPTS="-XX:MaxPermSize=512M -Dfile.encoding=UTF-8"
export PATH=$CONSCRIPT_HOME/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/usr/local/Cellar/postgresql/9.5.3/bin:$PATH"
setopt nonomatch
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`


# Golang
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
