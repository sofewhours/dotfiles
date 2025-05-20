return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional
    "lewis6991/gitsigns.nvim"      -- optional
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    require("barbar").setup({
      animation = true,
      auto_hide = false,
    })

    -- Optional keymaps
    vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
    vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
    vim.keymap.set("n", "<Leader>bc", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
  end,
}
