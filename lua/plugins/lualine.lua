return {
    'nvim-lualine/lualine.nvim',
    dependencies = { },
	config = function()
		require('lualine').setup({
			options = {
				theme = 'ayu_mirage'
			}
		})
	end
}