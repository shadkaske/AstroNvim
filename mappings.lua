return {
  n = {
    ["<leader>h"] = false,
    ["<leader>o"] = false,
    ["<leader>y"] = { name = "󰨸 Clipboard" },
    ["<leader>bd"] = { "<cmd>Bdelete<cr>", desc = "Close buffer" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>gn"] = {
      "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>",
      desc = "Next Hunk",
    },
    ["<leader>gp"] = {
      "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>",
      desc = "Previous Hunk",
    },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzz" },
    ["N"] = { "Nzz" },
    ["[o"] = { "O<ESC>" },
    ["]o"] = { "o<ESC>" },
    ["gyo"] = { '"_dP', desc = "Paste Over" },
    ["gyp"] = {'"+p', desc = "Paste System" },
    ["gyy"] = {'"+y', desc = "Yank to System" },
    ["gyd"] = {'"+d', desc = "Delete to System" },
    ["<leader>yo"] = { '"_dP', desc = "Paste Over" },
    ["<leader>yp"] = { '"+p', desc = "Paste System" },
    ["<leader>yy"] = { '"+y', desc = "Yank to System" },
    ["<leader>yd"] = { '"+d', desc = "Delete to System" },
    [";;"] = { "A;<ESC>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["gyo"] = { '"_dP', desc = "Paste Over" },
    ["gyp"] = { '"+p', desc = "Paste System" },
    ["gyy"] = { '"+y', desc = "Yank to System" },
    ["gyd"] = { '"+d', desc = "Delete to System" },
    [">"] = { ">gv" },
    ["<"] = { "<gv" },
  },
  i = {
    [";;"] = { "<C-o>A;" },
  },
}
