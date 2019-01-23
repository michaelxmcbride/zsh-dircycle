# A Zsh plugin for cycling through the directory stack.

_dircycle_update_cycled() {
    setopt localoptions nopushdminus

    [[ ${#dirstack} -eq 0 ]] && return

    while ! builtin pushd -q $1 &>/dev/null; do
        # A missing directory was found; pop it out of the directory stack.
        builtin popd -q $1

        # Stop trying if there are no more directories in the directory stack.
        [[ ${#dirstack} -eq 0 ]] && break
    done
    
    # Trigger a prompt update if using Pure (https://github.com/sindresorhus/pure).
    if typeset -f prompt_pure_setup > /dev/null; then
        prompt_pure_async_tasks
        prompt_pure_preprompt_render
    else
        zle reset-prompt
    fi
}

_dircycle_insert_cycled_left() {
    _dircycle_update_cycled +1 || true
}

zle -N _dircycle_insert_cycled_left

_dircycle_insert_cycled_right() {
     _dircycle_update_cycled -0 || true
}

zle -N _dircycle_insert_cycled_right

# Bind Ctrl + Shift + Left key combination to backwards direction.
bindkey "\e[1;6D" _dircycle_insert_cycled_left

# Bind Ctrl + Shift + Right key combination to forwards direction.
bindkey "\e[1;6C" _dircycle_insert_cycled_right
