--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Arfan Zubi
-- LANGUAGE SERVERS

local lspconfig = require("lspconfig")

-- LSP servers
lspconfig.rust_analyzer.setup({})

lspconfig.clangd.setup({})

lspconfig.tsserver.setup({})

lspconfig.lua_ls.setup({
    settings = { Lua = { diagnostics = { globals = { "vim", "opt", "g", "kmap", "cmd" } } } },
})

lspconfig.marksman.setup({})

lspconfig.ltex.setup({
    filetypes = { "bib", "gitcommit", "org", "plaintex", "rst", "rnoweb", "text" },
})

lspconfig.bashls.setup({})

lspconfig.html.setup({})

lspconfig.cssls.setup({})
