if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -l IS_TERMUX 0
if test -n "$TERMUX_VERSION"; or test -d /data/data/com.termux
    set IS_TERMUX 1
end

if not set -q TMUX; and not set -q ZELLIJ
    # if type -q tmux
    #     tmux new-session -A -s main
    # else if type -q zellij
    #     zellij attach -c main
    # end

    if type -q zellij
        zellij attach -c main
    else if type -q tmux
        tmux new-session -A -s main
    end
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
# pnpm
set --export PNPM_HOME "$HOME/.local/share/pnpm"
set --export PATH $PNPM_HOME/bin $PATH
# xterm
set -gx TERM xterm-256color

# Plugin pj
set -gx PROJECT_PATHS ~/workspace ~/.config ~/IdeaProjects/

starship init fish | source

fastfetch

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
