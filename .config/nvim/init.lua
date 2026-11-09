require("vim-opts")
require("vim-binds")
require("config.lazy")
require("vim-lsp")

-- vim.g.python3_host_prog = '/usr/bin/python'
-- vim.g.loaded_python3_provider = nil
vim.cmd('runtime! plugin/rplugin.vim')
