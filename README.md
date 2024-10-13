# Personal Configurations
<!-- <a id="top"></a> -->
English | [中文](README.zh.md)

## Themes
<div align="center">

![hyde_banner](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/hyde_banner.png)

<br>

https://github.com/prasanthrangan/hyprdots/assets/106020512/7f8fadc8-e293-4482-a851-e9c6464f5265

<br></div>

<div align="right">
  <br>
  <a href="#top"><kbd> <br> 🡅 <br> </kbd></a>
</div>

**You can have the same user experience as me in Archlinux**

## Desktop Environment（Native Wayland）

**Install packages in Archlinux (need aur):**

Some tools can also be installed from `cargo/pip/npm`.

1. shell

```bash
yay -S zsh eza rsync bat starship htop
```

```bash
chsh -s /bin/zsh
```

2. fonts

Download fonts from here: [MapleMono-NF-CN.zip](https://github.com/subframe7536/Maple-font/releases)
```bash
unzip MapleMono-NF-CN.zip -d MapleFont
sudo cp -r MapleFont /usr/share/fonts
sudo fc-cache -fv
```

3. utils

```bash
yay -S qt5-wayland qt6-wayland
```

4. hypr

```bash
yay -S dunst libbotify hyprland rofi-wayland waybar swww swaylock-effects-git wlogout grimblast-git cliphist pipewire-pulse swappy hyde-cli-git wf-recorder
```

5. dependency

```bash
yay -S polkit-gnome xdg-desktop-portal-hyprland python-pyamdgpuinfo parallel imagemagick qt5-imageformats brightnessctl pavucontrol pamixer pacman-contrib
```

6. theme

```bash
yay -S nwg-look kvantum qt5ct qt6ct
```

7. apps

```bash
yay -S google-chrome/firefox kitty fastfetch neovim fcitx5
```

8. others

```bash
pip install hyprshade
```

## Init

1. Install all packages
2. Run `./init.sh`, it will initialize env and patch sources.
3. If there is a conflicting file, delete it manually. run `./config.sh install`

> [!IMPORTANT]
> `./init.sh` will excuable `./config.sh install`. **It will rm your `~/.bashrc`, please backup your `~/.bashrc` first!**

## Run

run `startde w` in tty.

## Update

```bash
./config.sh uninstall
git pull --rebase
./config.sh install
```

## Uninstall

It is easy to rm the symbol, just run `./config.sh uninstall`

## Editor/IDE (Neovim)

### Developer Environment (Neovim config dependeies)

Install packages:

```bash
yay -S python pyenv fnm
```

list python versions:

```bash
pyenv install --list
```

install python for a select version:

```bash
pyenv install <version>
```

use python for a select version:

```bash
pyenv shell <version>
```

install nodejs:

```bash
fnm install <version/--latest>
fnm default <version>
```

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Restart terminal for apply environment.

```bash
pip install pynvim
```

```bash
npm i -g neovim
```

`pip` and `npm` are just the basic environment configuration of neovim, it is highly recommended to use the `:checkhealth` command to see which commands are not installed after running the configuration of lua, you can continue to use the corresponding package management for installation!

### install neovim config

default use git ssh, if you use http, modify `.gitmodules`, set `url`:

```
https://github.com/groveer/nvchad-starter.git
```

Update git submodule:

```bash
git submodule update --init
```

<div align="right">
  <br>
  <a href="#top"><kbd> <br> 🡅 <br> </kbd></a>
</div>

## Thanks to

1. [hyprdots](https://github.com/prasanthrangan/hyprdots): themes from here!
