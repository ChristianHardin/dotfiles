eval "$(starship init bash)"
eval "$(zoxide init bash)"
# eval "$(fzf --bash)"

# source_if_exists /usr/share/doc/pkgfile/command-not-found.bash
# source_if_exists /usr/share/bash-completion/bash_completion

# ble-import -d integration/fzf-completion
# ble-import -d integration/fzf-key-bindings

# bleopt complete_auto_complete=10000
# bleopt exec_errexit_mark=
# bleopt exec_exit_mark=

shopt -s autocd
shopt -s checkwinsize
alias ls="ls --color"
alias l="ls -l --color"
alias ll="ls -al --color"
alias cd="z"
alias grep="grep --color=auto"
alias vim="nvim"
alias vi="nvim"
alias nano="nvim"
alias edit-limine="sudo nvim /boot/limine/limine.cfg"
alias edit-initramfs="sudo nvim /etc/mkinitcpio.conf"
alias update-initramfs="sudo mkinitcpio -P"

export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
export HISTCONTROL=ignorespace
export HISTCONTROL=ignoreboth
export HISTCONTROL="erasedups:ignorespace"

export EDITOR="nvim"
export VISUAL="nvim"
export TERM="screen-256color"

export SSH_AUTH_SOCK=$HOME/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock
