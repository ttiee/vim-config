
# 我的 vim 配置 | [English](README.md)

## 简介

我的 `vim` 配置文件，主要用于文本编辑、Markdown 编辑。

[Arch-nvim](https://github.com/ttiee/vim-config/tree/Arch-nvim) 分支是我的 `neovim` 配置。

## 安装

### 1. 安装 vim

```bash
sudo apt install vim
```

对于Arch Linux:
```bash
pacman -S vim
```

### 2. 安装 vim-plug

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 3. 安装插件

```bash
vim +PlugInstall
```
