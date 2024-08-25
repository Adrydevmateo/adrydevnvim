return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("mason").setup()

			require("mason-lspconfig").setup({
				automatic_installation = true,
				ensure_installed = {
					"cssls",
					"biome",
					"html",
					"jsonls",
					"tsserver",
					"emmet_language_server",
					"gopls",
					"biome",
				},
			})

			require("mason-tool-installer").setup({
				ensure_installed = {
					"biome",
					"stylua", -- lua formatter
				},
			})
		end,
	},
}
