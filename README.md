# zsh-dircycle
> Cycle through the directory stack

Cycle through the directory stack (i.e. a list of recently-visited directories) with `Ctrl + Shift + Left` and `Ctrl + Shift + Right`. The direction follows the order in which the directories were visited, like the left and right arrows do in a web browser.

## Installation

### Framework
You can use the [Zsh framework](https://github.com/unixorn/awesome-zsh-plugins#frameworks) of your choice to install `zsh-dircycle`.  For example, if you're using [Antigen](https://github.com/zsh-users/antigen), add `antigen bundle michaelxmcbride/zsh-dircycle` to your `~/.zshrc` file.  Generic installation instructions for additional frameworks can be found [here](https://github.com/unixorn/awesome-zsh-plugins#installation).

### Manual
1. Clone, download, or add this repository as a Git submodule
2. Add `source /path/to/dircycle.zsh` to your `~/.zshrc` file

## Usage
- Press `Ctrl + Shift + Right` to move forwards through the directory stack
- Press `Ctrl + Shift + Left` to move backwards through the directory stack

## Credits
- [mafredri/zeet/dircycle.zsh](https://github.com/mafredri/zeet/blob/master/dircycle.zsh)
- [robbyrussell/oh-my-zsh/plugins/dircycle](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/dircycle)

## License
[MIT](./LICENSE)
