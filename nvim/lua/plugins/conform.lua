return {
	"stevearc/conform.nvim",

	event = { "BufWritePre" },
	cmd = { "ConformInfo" },

	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				rust = { "rustfmt" },
			},

			format_on_save = {
				lsp_fallback = true,
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "Format buffer" })
	end,
}
