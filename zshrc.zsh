# handy zsh shortcuts            -*- zsh -*-
# Copyright (C) 2019 David Capello
# https://github.com/superhandy/zshrc/

function handy_cancel_or_kill_whole_line() {
    if (( REGION_ACTIVE )) ; then
        zle set-mark-command -n -1
    else
        zle kill-whole-line
    fi
}
zle -N handy_cancel_or_kill_whole_line

bindkey -e

bindkey -s "\e(" "["
bindkey -s "\e)" "]"

bindkey "\ej" backward-char
bindkey "\el" forward-char
bindkey "\ei" up-line-or-history
bindkey "\ek" down-line-or-history

bindkey "\eJ" emacs-backward-word # bash-backward-word
bindkey "\eL" emacs-forward-word # bash-forward-word

bindkey "\eu" emacs-backward-word
bindkey "\eo" emacs-forward-word
bindkey "\eh" beginning-of-line
bindkey "\eH" end-of-line
bindkey "\eg" kill-line
bindkey "\er" kill-word
bindkey "\ee" backward-kill-word
bindkey "\ed" backward-delete-char
bindkey "\eD" backward-kill-word # bash-backward-kill-word
bindkey "\ef" delete-char
bindkey "\eF" kill-word # bash-kill-word
bindkey "\ez" undo
bindkey "\en" handy_cancel_or_kill_whole_line
bindkey "\e " set-mark-command
bindkey "\ex" kill-region
bindkey "\ec" copy-region-as-kill
bindkey "\ev" yank
bindkey "\eV" yank-pop
bindkey "\ew" delete-horizontal-space
bindkey "\emt" transpose-chars
bindkey "\em\et" transpose-words
bindkey "\eY" history-incremental-search-backward
bindkey "\ey" history-incremental-search-forward
