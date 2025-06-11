return {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
    require("flutter-tools").setup {
      widget_guides = { enabled = true },
      dev_log = { enabled = true, open_cmd = "tabedit" },
       -- Connect to Android emulator/physical device
       --flutter_path = "<path-to-flutter>", -- Only if not in $PATH
  device = "android", -- Force Android (omit to choose manually)
}
      vim.keymap.set("n", "<leader>fr", ":FlutterHotReload<CR>")
      vim.keymap.set("n", "<leader>fR", ":FlutterRestart<CR>")
      vim.keymap.set("n", "<leader>fq", ":FlutterQuit<CR>")
  end
}