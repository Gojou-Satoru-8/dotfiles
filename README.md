# My Dotfiles

Welcome to my dotfiles repository! This repository contains the configuration files I use to set up my development environment. 
I keep a minimal configuration for my dev environment. Earlier I used oh-my-zsh, but found it to be rather slow on startup, hence I decided to write
my minimal config myself.
Please note that these file are specific to MacOS, and would require certain changes to work on Linux distros.

## Contents

This repository includes the following configuration files and directories:

- **Zsh Configuration**
  - `.zshrc`
  - `.zprofile`
  - `.zshenv`
  - `.zsh_plugins/` (No plugin manager used, only git-submodules added to this directory)

- **Git Configuration**
  - `.gitconfig`
  - `.gitmodules`
  
- **Configuration Files in `.config/`**
  - `.config/helix/` (Helix terminal editor)
  - `.config/kitty/` (Kitty terminal emulator - alternative to iTerm2)
  - `.config/zed/` (Zed editor - VSCode alternative)
  - `.config/starship/` (starship prompt)
  - `.config/fastfetch/` (fastfetch - info panel on terminal like neofetch)
  - `.config/macchina/` (macchina - fastfetch alternative written in rust)
  - `.config/delta/` (delta pager - init setup in /.gitconfig)

## Installation

To set up your environment using these dotfiles:

1. **Clone the Repository:**

   First, clone this repository to your home directory:
   ```
   git clone --recursive https://github.com/yourusername/dotfiles.git ~/dotfiles
   ```
   If none of the contents inside dotfiles exist in your home directory yet, you can copy all of them into your home directory.
   Otherwise follow these steps:
   
2. **Create a `.config` directory in your home directory, if not already present**
   ``` mkdir ~/.config ```
3. **Copy everything from `~/dotfiles/.config` to `~/.config`:**
   ``` cp -r ~/dotfiles/* ~/.config/ ```
4. **Copy `.zprofile` and everything starting with `.zsh` to home directory:**
   ```
   cp -r ~/dotfiles/.zsh*  ~/
   cp ~/dotfiles/.zprofile ~/     
   ```
5. **Lastly, copy everything starting with `.git` to home directory:**
   ```
   cp ~/dotfiles/.git* ~/ 
   ```
## Credits:
1. Delta Config: The themes file inside delta is a collection of all major themes contributed by users in the main [Delta repository](https://github.com/dandavison/delta/).
2. Starship: The Starship default prompt was copied from a YouTube video (I shall put the link here, when I find the video).
