# birchmen.nvim

## Introduction

This repo represents my config of neovim. The configuratin is based on the fantastic kickstart.nvim project and fulfills my needs of:

* Word Processing Program
* Markdown and Latex editing
* Basic programing environment for python and shell

## Installation

### Install Neovim

Birchmen.nvim targets *only* the latest version of nvim. This means whatever version is in the Arch repos.

[Neovim release](https://github.com/neovim/neovim/releases/tag/stable)
[Arch Neovim package](https://archlinux.org/packages/?name=neovim)

If you are experiencing issues, please make sure you have the latest versions.

### Install External Dependencies

> **NOTE**
> [Backup](#FAQ) your previous configuration (or don't, I'm not the boss of you)

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- `wl-clipboard` for system clipboard integration in wayland
- Language Setup:
  - If want to write Typescript, you need `npm`
  - If want to write Golang, you will need `go`
  - etc.


Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |

Clone birchmen.nvim:

Linux

```sh
git clone https://github.com/the-birchmen/neovim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view current plugin status.
