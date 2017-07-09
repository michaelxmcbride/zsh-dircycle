# Cycle through the directory stack with Ctrl+Shift+Left/Right. Direction follows
# the order in which directories were visited, like left/right arrows do in a
# browser.

_dircycle_update_cycled() {
    setopt localoptions nopushdminus

    [[ ${#dirstack} -eq 0 ]] && return

    while ! builtin pushd -q $1 &>/dev/null; do
        # A missing directory was found: pop it out of the dir stack
        builtin popd -q $1

        # Stop trying if there are no more directories in the dir stack
        [[ ${#dirstack} -eq 0 ]] && break
    done

    if typeset -f prompt_pure_setup > /dev/null; then
        # Trigger a prompt update if using Pure (https://github.com/sindresorhus/pure)
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

# Ctrl+Shift+Left (backwards)
bindkey "\e[1;6D" _dircycle_insert_cycled_left

# Ctrl+Shift+Right (forwards)
bindkey "\e[1;6C" _dircycle_insert_cycled_right
