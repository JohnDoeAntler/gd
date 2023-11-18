function gd_remove
  set store $argv[1]
  set entry $argv[2]

  if test -f $store
    set escaped $(echo $entry | sed -r "s:/:\\\\/:g")
    sed -i "/^$escaped\$/d" $store
  end
end

