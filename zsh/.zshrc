source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}

source_if_exists /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source_if_exists /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source_if_exists /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=$HOME/.config/zsh/.zsh_history

# History Options
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions.

# Applications
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Aliases
alias ls="lsd --icon-theme=unicode"
alias cat="bat"
alias cd="z"
alias ..="cd .."
alias l="ls -l"
alias ll="ls -la"
alias la="ls -la"
alias edit-grub="sudo nvim /etc/default/grub"
alias edit-mkinitcpio="sudo nvim /etc/mkinitcpio.conf"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias update-mkinitcpio="sudo mkinitcpio -p linux"
alias vim="nvim"
alias v="nvim"
alias vi="nvim"
alias nano="nvim"
alias pacman-clean="sudo pacman -Qdtq | sudo pacman -Rs -" 
alias pacman-cache="sudo pacman -Sc"
alias psource="source ./venv/bin/activate"

# Environment
export EDITOR="nvim"
export VISUAL="nvim"

# Keybindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

## workaround for handling TERM variable in multiple tmux sessions properly (by Nicholas Marriott)
if [[ -n ${TMUX} && -n ${commands[tmux]} ]];then
        case $(tmux showenv TERM 2>/dev/null) in
                *256color) ;&
                TERM=fbterm)
                        TERM=screen-256color ;;
                *)
                        TERM=screen
        esac
fi
