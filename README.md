# tbjers/dot-files
My dotfiles, compatible with [ellipsis][ellipsis].

## Features

Does not provide any shell or editor configurations. See [zsh][dot-zsh], etcetera for the rest of my configurations.

## Install
Clone and symlink or install with [ellipsis][ellipsis]:

```
$ ellipsis install tbjers/dot-files
```

Install my full configuration:

```
$ curl -sL ellipsis.sh | ELLIPSIS_USER=tbjers ELLIPSIS_PROTO=ssh PACKAGES='files casks zsh tmux vim' sh
```

[dot-zsh]: https://github.com/tbjers/dot-zsh
[ellipsis]: http://ellipsis.sh
