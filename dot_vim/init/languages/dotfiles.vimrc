" Run chezmoi apply on saving a dotfile managed by chezmoi
autocmd BufWritePost ~/.local/share/chezmoi/* ! chezmoi apply --source-path % <CR>
