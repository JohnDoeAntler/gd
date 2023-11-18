source "$(dirname $(status -f))/gd_add.fish"
source "$(dirname $(status -f))/gd_remove.fish"

function gd_goto
  set store $argv[1]
  set path $(cat $store | fzf --reverse --preview "ll {}" --height 50% );

  if test "$path" != ""
    if test -d $path
      cd $path
      gd_add $store $path
    else
      gd_remove $store $path
    end
  end
end

