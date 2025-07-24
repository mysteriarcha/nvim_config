return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    vim.keymap.set("n", "<leader>x", ":Neotree filesystem reveal left <CR>", {})
    vim.keymap.set("n", "<leader>z", ":Neotree filesystem close <CR>", {})
    local config = require("nvim-treesitter.configs")
    config.setup({
    ensure_installed = { "c", "lua", "query", "markdown", "r", "julia", "latex" , "markdown_inline", "yaml", "rnoweb"},
    highlight = { enable = true },
    indent    = { enable = true },
    auto_install = true
  })
  end
}
