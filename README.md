# Dotfiles

## Clone Repo to Home Directory

- Prior to the installation make sure you have committed the alias to your .bashrc or .zsh:

```sh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

- And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems:

```sh
echo ".dotfiles" >> .gitignore
```

- Clone the repo

```sh
git clone --bare https://github.com/ft-aslan/.dotfiles.git $HOME/.dotfiles
```

- Checkout

```sh
dotfiles checkout
```

### Connect Windows Git Credetentions to WSL

```sh
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager-core.exe"
```

### Neovim Dependencies

- [riprep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- (Optional) [bob](https://github.com/MordechaiHadad/bob) a version manager for nvim
- (Needed for WSL) [win32yank](https://github.com/equalsraf/win32yank) WSL tool for sync clipboard with Windows
- [lazygit](https://github.com/jesseduffield/lazygit) (you can install it with go easily)
- [github-cli](https://github.com/cli/cli) for [octo.nvim](https://github.com/pwntester/octo.nvim)
