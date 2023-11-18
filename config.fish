# remember all travelled directories
function memorize_directory_path --on-variable PWD
  gd_add ~/.config/fish/dir_history.log $PWD
end

# remember all travelled git repositories
function memorize_git_directory_path --on-variable PWD
  if test "$(git rev-parse --show-toplevel 2> /dev/null)" = $PWD;
    gd_add ~/.config/fish/git_dir_history.log $PWD

    git status
  end
end

# quick jump to recent git repositories
alias g 'gd_goto ~/.config/fish/git_dir_history.log'
# quick jump to history records
alias gg 'gd_goto ~/.config/fish/dir_history.log'

