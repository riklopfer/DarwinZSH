Darwin ZSH Rig
==============

Setting up a zsh rig on MacOS. 

Terminal Commands
-----------------

1. Change to `zsh`

        chsh -s /bin/zsh

1. (_optional_) copy `.zshrc` -- if you don't do this, you should make changes as described below.

        cp .zshrc ~/.zshrc

1. Install [Homebrew](https://brew.sh)

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

1. Install [Oh My ZSH](https://ohmyz.sh)

        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

1. `brew install` a bunch of stuff.

        xargs brew install < brew_things.txt

1. `conda init` -- this will modify `.zshrc`

        conda init zsh


`~/.zshrc` Edits
----------------

1. [Complete pure install](https://github.com/sindresorhus/pure#getting-started)

        # .zshrc
        autoload -U promptinit; promptinit
        prompt pure

1. Make `subl` the default editor

        export EDITOR='subl -w'


conda auto complete
===================

```shell
git clone https://github.com/esc/conda-zsh-completion ~/.zsh/conda-zsh-completion
```


add to `~/.zshrc`

        fpath+=~/.zsh/conda-zsh-completion
        compinit conda


