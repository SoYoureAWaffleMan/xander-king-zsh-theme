# Xandermute custom theme for Oh-My-Zsh

A fairly muted theme which is minimalist outside of git repos and simple within them. Some themes update their git status markers only after running `git status`. This version is dumber and quicker, which I aspire to.

Note: this theme updates git status colors to match its output. To reset you can:

`git config --global --unset color.status.changed && git config --global --unset color.status.untracked`

The theme file should live in:

`/home/${USER}/.oh-my-zsh/themes/xandermute.zsh-theme`

and the `.zshrc` entry is

`ZSH_THEME="xandermute"`

![Xandermute](https://user-images.githubusercontent.com/6367213/199682710-58497998-7be6-454a-b09c-140b28d4e296.png)
