BREW_PACKAGES := \
    ag \
    ant \
    autojump \
    coreutils \
    gibo \
    go \
    jq \
    lv \
    nkf \
    node \
    peco \
    pyenv \
    rbenv \
    sbt \
    scala \
    tree \
    watch

DOT_PATH  := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
DOT_FILES := $(shell find . \
    -name LICENSE -type f -prune -o \
    -name Makefile -type f -prune -o \
    -name README.md -type f -prune -o \
    -name .DS_Store -type f -prune -o \
    -name .git -type d -prune -o \
    -name .gitignore -type f -prune -o \
    -name .gitmodules -type d -prune -o \
    -type f -print)


all:

update:
	git pull origin master

install-homebrew: ## Install the homebrew packages
	brew update
	brew upgrade
	@$(foreach val, $(BREW_PACKAGES), brew instal $(val);)

list: ## Show dot files in this repo
	@$(foreach val, $(DOT_FILES), /bin/ls -dF $(val);)

deploy: ## Create symlink to home directory
	@$(foreach val, $(DOT_FILES), ln -sfnv $(abspath $(val)) $(abspath $(HOME)/$(val));)

