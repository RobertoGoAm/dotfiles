#!/usr/bin/env zsh

# Add chezmoi to PATH
typeset -U path
path+=$HOME/bin

# Install gitupdate
go get -u github.com/nikitavoloboev/gitupdate

