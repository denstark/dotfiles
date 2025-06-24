# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

export EDITOR=vim
# Add a timestamp to each command.
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "

# Add user bin dir to PATH
export PATH=$PATH:~/bin:~/.local/bin

# Use case-insensitive filename globbing
shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
shopt -s histappend


# Ensure $LINES and $COLUMNS always get updated.
shopt -s checkwinsize

# Enable bash completion.
[ -f /etc/bash_completion ] && . /etc/bash_completion

export PS1="\e[1;32m\u@\h\e[m :: \e[1;34m{\w}\e[m :: \$?\n\$ "
source ~/.aliases
[ -f ~/.bashrc.local ] && . ~/.bashrc.local

# WSL (Windows Subsystem for Linux) specific settings.
if grep -qE "(Microsoft|WSL)" /proc/version &>/dev/null; then
    # Adjustments for WSL's file / folder permission metadata.
    if [ "$(umask)" = "0000" ]; then
      umask 0022
    fi

    # Access local X-server with VcXsrv.
    #   Requires: https://sourceforge.net/projects/vcxsrv/ (or alternative)
    export DISPLAY=:0

    # Configure the Docker CLI to use the Docker for Windows daemon.
    #   Requires: https://docs.docker.com/docker-for-windows/install/
    export DOCKER_HOST=tcp://localhost:2375
fi
eval "$(zoxide init bash)"
