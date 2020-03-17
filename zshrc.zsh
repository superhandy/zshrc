# handy zsh shortcuts            -*- zsh -*-
# Copyright (C) 2019-2020 David Capello
# https://github.com/superhandy/zshrc/

function handy_cancel_or_kill_whole_line() {
    if (( REGION_ACTIVE )) ; then
        zle set-mark-command -n -1
    else
        zle kill-whole-line
    fi
}

function handy_backward_kill_word() {
    select-word-style shell
    zle backward-kill-word
    select-word-style bash
}

function handy_kill_word() {
    select-word-style shell
    zle kill-word
    select-word-style bash
}

function handy_backward_word() {
    select-word-style shell
    zle backward-word
    select-word-style bash
}

function handy_forward_word() {
    select-word-style shell
    zle forward-word
    select-word-style bash
}

zle -N handy_cancel_or_kill_whole_line
zle -N handy_backward_kill_word
zle -N handy_kill_word
zle -N handy_backward_word
zle -N handy_forward_word

autoload -U select-word-style
select-word-style bash

bindkey -e

bindkey -s "\e(" "["
bindkey -s "\e)" "]"

bindkey "\ej" backward-char
bindkey "\el" forward-char
bindkey "\ei" up-line-or-history
bindkey "\ek" down-line-or-history

bindkey "\eJ" handy_backward_word
bindkey "\eL" handy_forward_word

bindkey "\eu" backward-word
bindkey "\eo" forward-word
bindkey "\eh" beginning-of-line
bindkey "\eH" end-of-line
bindkey "\eg" kill-line
bindkey "\er" kill-word
bindkey "\ee" backward-kill-word
bindkey "\ed" backward-delete-char
bindkey "\eD" handy_backward_kill_word
bindkey "\ef" delete-char
bindkey "\eF" handy_kill_word
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
