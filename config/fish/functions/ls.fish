function ls --wraps='eza --long --header --level 1 --no-permissions --no-user --tree --group-directories-first --git --color' --wraps='eza --long --header --level 1 --no-permissions --no-user --tree --group-directories-first --git --color --icons' --description 'alias ls=eza --long --header --level 1 --no-permissions --no-user --tree --group-directories-first --git --color --icons'
    eza --long --header --level 1 --no-permissions --no-user --tree --group-directories-first --git --color --icons $argv
end
