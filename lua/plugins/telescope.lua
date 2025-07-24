return{
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim'},
    defaults = { 
    previewer = true, 
    preview_cutoff = 0
	  },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", ":Telescope find_files hidden=true<CR>")
      vim.keymap.set("n", "<leader>ff", builtin.live_grep, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()

    local canned = require("telescope._extensions.media.lib.canned")
      require("telescope").setup({
      extensions = {
        ["ui-select"] = { require("telescope.themes").get_dropdown {
          }
        },
        media = {
           backend = "viu", -- image/gif backend
           flags = {
           viu = {
           move = true, -- GIF preview
          },
        },
         on_confirm_single = canned.single.copy_path,
         on_confirm_muliple = canned.multiple.bulk_copy,
         cache_path = vim.fn.stdpath("cache") .. "/media",
        },
        },
      defaults = {
          layout_strategy = "flex",
        },
      })
      require("telescope").load_extension("ui-select")
      require('telescope').load_extension("media")
    end
  },
}
