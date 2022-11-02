# Put working directory on the left, colored if a git repo is found
PS1='$(git_repo_color)%~%u ➜ %F{reset}'

# Put git status on the right
RPROMPT='$(git_info)%{$reset_color%}'

git_info() {
  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}


git_repo_color() {
  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return
  # 246 is a subtle grey. To see a range in the console:
  # for code in {000..255}; do print -P -- "$code: %F{$code}Color%f"; done
  echo "%{%F{246}%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{%F{003}%} ✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ "
