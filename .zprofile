
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nvm setup (through zsh-nvm plugin, installed as a git submodule)
source "$HOME/.zsh_plugins/zsh-nvm/zsh-nvm.plugin.zsh"

# Change java version as per your choice:
# Currently installed are 21 (LTS) and 22
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH=$JAVA_HOME/bin:$PATH
