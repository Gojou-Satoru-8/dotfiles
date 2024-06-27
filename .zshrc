# Enable colors in ls (ie make ls -G default):
export CLICOLOR=1
export LSCOLORS=FxcxcxDxCxegedabagacad

# Tab-completion type and colors:
autoload -Uz compinit; compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LSCOLORS}

# Define colors for different parts of the completion menu
zstyle ':completion:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:messages' format '%F{purple}-- %d --%f'
zstyle ':completion:*:warnings' format '%F{red}-- no matches found --%f'
zstyle ':completion:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'

# Colorize the completion menu items
# zstyle ':completion:*' list-colors 'di=38:ex=32:fi=36:ln=36:so=36:pi=36:bd=36:cd=36:su=36:sg=36:tw=36:ow=36'


# History settings:
HISTSIZE=30000
SAVEHIST=5000
setopt APPEND_HISTORY
# setopt SHARE_HISTORY
# setopt HIST_EXPIRE_DUPS_FIRST
# setopt HIST_IGNORE_DUPS

# -------------------- PLUGINS --------------------

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-completions (disabled due to slow startup)
# if type brew &>/dev/null; then
#     FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

#     autoload -Uz compinit
#     compinit
# fi

# zsh-autocomplete
# source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# zsh-history-substring-search (the plugin is still there to try)
# source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down

# No need of the above plugin, zsh has built-in support using these lines:
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# zsh-syntax-highlighting
# source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-fast-syntax-highlighting  (Better)
source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# To prevent man page being highlighted (otherwise slows down the shell upon typing "man")
FAST_HIGHLIGHT[chroma-man]=


# -------------------- PROMPTS --------------------
# powerlevel10k:
# source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# starship:
eval "$(starship init zsh)"
# By default, starship looks for starship.toml at ~/.config/
# Uncomment one of these lines to select the config / theme:
export STARSHIP_CONFIG=~/.config/starship/starship.toml
# export STARSHIP_CONFIG=~/.config/starship/starship_pills.toml
# export STARSHIP_CONFIG=~/.config/starship/starship_pure.toml

# oh-my-posh:
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json --manual)"

# -------------------- STARTUP PROGRAMS --------------------:
macchina