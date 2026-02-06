# .dotfiles

Personal configuration files for my development environment.

## Contents

- **nvim**: Neovim configuration
- **zsh**: Zsh shell configurations
- **tmux**: Tmux terminal multiplexer settings
- **ghostty**: Ghostty terminal configuration
- **opencode**: Development tool configurations

## Installation

### 1. Clone the repository

Clone this repository into your home directory as `~/.dotfiles`:

```bash
git clone git@github.com:lviana15/.dotfiles.git ~/.dotfiles
```

### 2. Configure

To make programs use these configuration files instead of the default `~/.config` locations, create symlinks for the desired tools:

```bash
# Create the config directory if it doesn't exist
mkdir -p ~/.config

# Neovim
ln -s ~/.dotfiles/nvim ~/.config/nvim

# Ghostty
ln -s ~/.dotfiles/ghostty ~/.config/ghostty

# Tmux
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# Zsh
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
```

Alternatively, you can set the `XDG_CONFIG_HOME` environment variable to point to this directory, though some tools may still require manual linking:

```bash
export XDG_CONFIG_HOME="$HOME/.dotfiles"
```
