ZSH_THEME_GIT_PROMPT_DIRTY="%{%F{yellow}%} ✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ "

git_info() {
  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return
  echo "$(parse_git_dirty)$(current_branch)%{$reset_color%}"
}

git_repo_color() {
  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return
  # 246 is a subtle grey. To see a range in the console:
  # for code in {000..255}; do print -P -- "$code: %F{$code}Color%f"; done
  echo "%{%F{246}%}"
}

# Put working directory on the left, tinted if a git repo is found
PS1='$(git_repo_color)%~%u ➜ %F{reset}'

# Put git status on the right
RPROMPT='$(git_info)%{$reset_color%}'

# Update git status colors to match
git config --global color.status.changed yellow
git config --global color.status.untracked 13