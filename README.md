# Zsh Dircycle

A [Zsh](https://www.zsh.org) plugin for cycling through the directory stack (i.e. a list of recently-visited directories) with <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Left</kbd> and <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Right</kbd>. The direction follows the order in which the directories were visited, like the left and right arrows do in a web browser.

## Installation

### Framework

You can use the [Zsh framework](https://github.com/unixorn/awesome-zsh-plugins#frameworks) of your choice to install Zsh Dircycle. For example, if you're using [Antigen](https://github.com/zsh-users/antigen), add `antigen bundle michaelxmcbride/zsh-dircycle` to your `~/.zshrc` file. Generic installation instructions for additional frameworks can be found [here](https://github.com/unixorn/awesome-zsh-plugins#installation).

### Manual

1. Clone, download, or add this repository as a Git submodule.
2. Add `source /path/to/dircycle.zsh` to your `~/.zshrc` file.

## Usage

- Press <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Right</kbd> to move forwards through the directory stack.
- Press <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Left</kbd> to move backwards through the directory stack.

## Credits

Inspired by:

- [oh-my-zsh/plugins/dircycle](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/dircycle)
- [zeet/dircycle.zsh](https://github.com/mafredri/zeet/blob/master/dircycle.zsh)

## License

[MIT](./LICENSE)
