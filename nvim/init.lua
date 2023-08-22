--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Arfan Zubi
-- INIT FILE

-- Variables
opt = vim.opt
g = vim.g
kmap = vim.keymap
cmd = vim.cmd

-- Imports
require("core.settings")            -- Editor settings
require("core.plugins")             -- Plugins
require("core.setups")              -- Setup of plugins
require("core.mappings")            -- Mappings
require("core.scripts")             -- Scripts

require("plugins.treesitter")       -- Treesitter syntax highlighting
require("plugins.lsp-mason")        -- Mason LSP servers
require("plugins.lsp-servers")      -- Language server setup
require("plugins.lsp-config-setup") -- LSPconfig setup
require("plugins.gitsigns-config")  -- Gitsigns mappings
require("plugins.autopairs")        -- Nvim AutoPairs
