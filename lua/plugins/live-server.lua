return {
  "barrett-ruth/live-server.nvim",
  build = "npm install -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop" },
  config = function()
    require("live-server").setup({
      port = 8080,
      host = "localhost",
      open_browser = true,
      browser = "default"
    })

    vim.keymap.set("n", "<C-F>", ":LiveServerStart<CR>")
    vim.keymap.set("n", "<C-G>", ":LiveServerStop<CR>")
  end
}