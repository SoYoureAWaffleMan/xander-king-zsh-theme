# Xandermute Custom theme for Oh-My-Zsh

A fairly muted theme which is minimalist outside of git repos and simple within them. Some themes update their git status markers only after running `git status`. This version is dumber and quicker, which I aspire to.

Note: this theme updates git status colors to match its output. To reset you can:

`git config --global --unset color.status.changed && git config --global --unset color.status.untracked`

The theme file shoul live in:

`/home/${USER}/.oh-my-zsh/themes/xandermute.zsh-theme`

and the `.zshrc` entry is

`ZSH_THEME="xandermute"`

Plain prompt for non-git directories
![prompt plain](https://user-images.githubusercontent.com/6367213/199592276-502e816c-5172-414e-9d06-3352dfda9fbd.png)

Subtle color change for git directories
![prompt repo](https://user-images.githubusercontent.com/6367213/199592350-7844ce7c-c22f-405a-9c6a-b774885b7e80.png)
