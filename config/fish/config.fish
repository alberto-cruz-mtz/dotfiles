if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -l IS_TERMUX 0
if test -n "$TERMUX_VERSION"; or test -d /data/data/com.termux
    set IS_TERMUX 1
end

if not set -q TMUX
    if type -q tmux
        tmux new-session -A -s main
    else if type -q zellij
        zellij attach -c main
    end
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set -gx PROJECT_PATHS ~/workspace ~/.config

starship init fish | source

fastfetch
