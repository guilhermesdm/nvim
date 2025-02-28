vim.opt.shiftwidth=4
vim.opt.colorcolumn = "80"
vim.opt.tabstop=4
vim.opt.cmdheight = 1 
vim.opt.conceallevel = 0 
vim.opt.fileencoding = "utf-8" 
vim.opt.ignorecase = true 
vim.opt.showmode = false 
vim.opt.showtabline = 0 
vim.opt.smartcase = true 
vim.opt.smartindent = true 
vim.opt.termguicolors = true 
vim.opt.undofile = true
vim.opt.updatetime = 30 
vim.opt.writebackup = false 
vim.opt.expandtab = false
vim.opt.cursorline = true 
vim.opt.number = true 
vim.opt.relativenumber = true 
vim.opt.laststatus = 3 
vim.opt.showcmd = false 
vim.opt.ruler = true 
vim.opt.signcolumn = "yes" 
vim.opt.wrap = true 
vim.opt.shortmess:append("c") 
vim.opt.whichwrap:append("<,>,[,],h,l") 
vim.opt.iskeyword:append("-") 
vim.opt.formatoptions:remove({ "c", "r", "o" }) 
vim.opt.linebreak = true
vim.opt.mouse = ""
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.shell = "zsh"
vim.opt.shellcmdflag = "-i -c"
vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
vim.opt.spellcapcheck = ""
vim.opt.spelllang = en_us,tok
vim.opt.spell = true
