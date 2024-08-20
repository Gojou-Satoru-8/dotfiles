# syntax-highliting for less:
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS=' -R -X -F '
export JAVA_HOME="/opt/homebrew/Cellar/openjdk/22.0.2/libexec/openjdk.jdk/Contents/Home"
export MAVEN_HOME="/opt/homebrew/Cellar/maven/3.9.8/"
