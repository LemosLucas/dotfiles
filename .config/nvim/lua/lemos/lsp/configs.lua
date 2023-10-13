local status_ok, lsp_installer = pcall(require, "mason-lspconfig")
if not status_ok then
  print 'Unable to use "nmason-lspconfig" plugin'
	return
end

local status_ok, mason = pcall(require, "mason")
if not status_ok then
  print 'Unable to use "mason" plugin'
	return
end

local lspconfig = require("lspconfig")

-- It needs to be loaded in this order!
-- https://github.com/williamboman/mason-lspconfig.nvim#default-configuration

mason.setup()

local servers = { "jsonls", "sumneko_lua", "tsserver", "tailwindcss", "clangd" }

lsp_installer.setup({
	ensure_installed = servers,
  automatic_installation = true,
})

local opts = {
  on_attach = require("lemos.lsp.handlers").on_attach,
  capabilities = require("lemos.lsp.handlers").capabilities,
}

for _, server in pairs(servers) do
	local has_custom_opts, server_custom_opts = pcall(require, "lemos.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end
