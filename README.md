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

### Connect Windows Git Credetentions to WSL
```sh
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager-core.exe"
```


### Neovim Dependencies
- [riprep](https://github.com/BurntSushi/ripgrep)
- (Optional) [bob](https://github.com/MordechaiHadad/bob) a version manager for nvim
