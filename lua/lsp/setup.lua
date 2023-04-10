-- :h mason-default-settings
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

-- mason-lspconfig uses the `lspconfig` server names in the APIs it exposes - not `mason.nvim` package names
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "tsserver",
    "tailwindcss",
    "bashls",
    "cssls",
    "dockerls",
    "emmet_ls",
    "html",
    "jsonls",
    "pyright",
    "rust_analyzer",
    "taplo",
    "yamlls",
    "gopls",
  },
})

-- -- DAP configuration
-- local dap = require('dap')
-- dap.adapters.godot = {
--   type = "server",
--   host = '127.0.0.1',
--   port = 6006,
-- }

-- dap.configurations.gdscript = {
--   {
--     type = "godot",
--     request = "launch",
--     name = "Launch scene",
--     project = "${workspaceFolder}",
--     launch_scene = true,
--   }
-- }



-- local lsp = require('lsp-zero').preset({})

-- lsp.on_attach(function(client, bufnr)
--   lsp.default_keymaps({buffer = bufnr})
-- end)

-- -- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- lsp.setup()

require'lspconfig'.gdscript.setup {
    cmd = {'nc', '127.0.0.1', '6008'}, -- the important trick for Windows!
    root_dir = require('lspconfig.util').root_pattern('project.godot', '.git'),
    filetypes = {'gd', 'gdscript', 'gdscript3' }  
}

-- lsp.configure('gdscript', {
--     force_setup = true, -- because the LSP is global. Read more on lsp-zero docs about this.
--     single_file_support = false,
--     cmd = {'nc', '127.0.0.1', '6005'}, -- the important trick for Windows!
--     root_dir = require('lspconfig.util').root_pattern('project.godot', '.git'),
--     filetypes = {'gd', 'gdscript', 'gdscript3' }
-- })
