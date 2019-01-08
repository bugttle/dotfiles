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
$ brew install --without-etcdir zsh
$ sudo vim /etc/shells
+/usr/local/bin/zsh
$ chsh -s /usr/local/bin/zsh
```

# Deploy
```
$ make homebrew-install
$ make list #=> show dotfiles
$ make deploy
```
