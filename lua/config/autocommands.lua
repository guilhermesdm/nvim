-- Turn on soft-wrap (pencil), autocorrect
vim.cmd([[
  augroup markdownSpell
    autocmd!
    " autocmd FileType markdown,md,txt setlocal spell
    autocmd FileType markdown,md,txt PencilSoft
    " autocmd filetype markdown,md,txt call AutoCorrect()
    autocmd BufRead,BufNewFile *.md setlocal spell
  augroup END
]])


