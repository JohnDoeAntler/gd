function gd_add
  set store $argv[1]
  set entry $argv[2]

  if test -f $store
    set escaped $(echo $entry | sed -r "s:/:\\\\/:g")
    sed -i "/^$escaped\$/d" $store
    echo $entry | cat - $store > $store.tmp && mv $store.tmp $store
  else
    echo $entry > $store
  end
end

