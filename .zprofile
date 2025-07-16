
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nvm setup (through zsh-nvm plugin, installed as a git submodule)
# source "$HOME/.zsh_plugins/zsh-nvm/zsh-nvm.plugin.zsh"
# nvm setup (through homebrew):
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# rust setup
. "$HOME/.cargo/env"  # . (dot) is same as source command


# Change java version as per your choice:
# Currently installed are 21 (LTS), 17 and 22:
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH=$JAVA_HOME/bin:$PATH
export JENKINS_HOME="$HOME/.jenkins/"
export SONAR_JAVA_PATH=$(/usr/libexec/java_home -v 17)/bin/java
# Copied over from .zshenv (not the right place to put)
export MAVEN_HOME="/opt/homebrew/Cellar/maven/3.9.8/"

# ANDROID SDK paths (for React Native)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export TEST_zprofile="Hello from .zprofile file"
