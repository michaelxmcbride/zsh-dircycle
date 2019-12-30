# Define directory paths.
base_directory_path="$PWD"
tests_directory_path="${base_directory_path}/tests"
temporary_directory_path="${tests_directory_path}/_temporary"
fixtures_directory_path="${temporary_directory_path}/fixtures"
output_directory_path="${tests_directory_path}/_output"
support_directory_path="${tests_directory_path}/_support"

# Automatically push directories to the directory stack.
setopt auto_pushd

# Create directory fixtures.
mkdir -p "${fixtures_directory_path}/"{1,2,3,4}/{1,2,3,4}

# Test if a function exists.
function function_exists {
    typeset -f "$1" > /dev/null
}

# Test if a key binding exists.
function key_binding_exists {
    bindkey -L "$1" | grep -E " $2$" > /dev/null
}

# Test if a ZLE (Zsh Line Editor) user-defined widget exists.
function zle_user_defined_widget_exists {
    zle -l "$1" > /dev/null
}
