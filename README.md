dotfiles
================================

# Setup

## Xcode

```
$ sudo xcode build -license
```

## Homebrew

```
$ xcode-select --install
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
```

## zsh
```
$ sudo chsh -s /bin/zsh
```

# Deploy
```
$ make homebrew-install
$ make list #=> show dotfiles
$ make deploy
```
