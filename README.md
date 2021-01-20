# dotfiles

- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [Installing ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [powerline-fonts](https://github.com/powerline/fonts)
- [Homebrew](https://brew.sh/)
- [Homebrew Formulae](https://formulae.brew.sh/)

## Install Homebrew

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install oh-my-zsh

``` bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install theme and configure

```bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


p10k configure

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


```

## Install Homebrew Formulae

``` bash
/bin/bash brew.sh
```

## Python packages

``` bash
# https://pypi.org/project/aws2-wrap/
pip install aws2-wrap
```

## Resources

- [How to Set Up Your MacBook for Web Development in 2020](https://medium.com/better-programming/setting-up-your-mac-for-web-development-in-2020-659f5588b883#589f)
- [dotfiles](https://dotfiles.github.io/)
- [awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
- [Connecting to GitHub with SSH](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)
- [Managing commit signature verification](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification)
