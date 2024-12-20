local builtin = require "telescope.builtin"
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          ["<Leader>bp"] = { "<Cmd>BufferPrevious<CR>", desc = "BufferPrevious" },
          ["<Leader>bn"] = { "<Cmd>BufferNext<CR>", desc = "BufferNext" },
          ["<Leader>b1"] = { "<Cmd>BufferGoto 1<CR>", desc = "BufferGoto 1" },
          ["<Leader>b2"] = { "<Cmd>BufferGoto 2<CR>", desc = "BufferGoto 2" },
          ["<Leader>b3"] = { "<Cmd>BufferGoto 3<CR>", desc = "BufferGoto 3" },
          ["<Leader>b4"] = { "<Cmd>BufferGoto 4<CR>", desc = "BufferGoto 4" },
          ["<Leader>b5"] = { "<Cmd>BufferGoto 5<CR>", desc = "BufferGoto 5" },
          ["<Leader>b6"] = { "<Cmd>BufferGoto 6<CR>", desc = "BufferGoto 6" },
          ["<Leader>b7"] = { "<Cmd>BufferGoto 7<CR>", desc = "BufferGoto 7" },
          ["<Leader>b8"] = { "<Cmd>BufferGoto 8<CR>", desc = "BufferGoto 8" },
          ["<Leader>b9"] = { "<Cmd>BufferGoto 9<CR>", desc = "BufferGoto 9" },
          ["<Leader>bc"] = { "<Cmd>BufferClose<CR>", desc = "BufferClose" },
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          -- ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>1to"] = { "<Cmd>ToggleTerm 1<CR>", desc = "TerminalToggle1" },
          ["<Leader>2to"] = { "<Cmd>ToggleTerm 2<CR>", desc = "TerminalToggle2" },
          ["<Leader>sv"] = { "<C-w>v", desc = "vertical" },
          ["<Leader>sh"] = { "<C-w>s", desc = "horizon" },
          ["<Leader>eh"] = { "<C-w>h", desc = "move h" },
          ["<Leader>ej"] = { "<C-w>j", desc = "move j" },
          ["<Leader>ek"] = { "<C-w>k", desc = "move k" },
          ["<Leader>el"] = { "<C-w>l", desc = "move l" },
          ["<Leader>tt"] = { "<Cmd>NvimTreeToggle<CR>", desc = "Toggle Explorer" },
          -- ["<Leader>tt"] = { "<Cmd>Neotree toggle<CR>", desc = "Toggle Explorer" },
          -- ["<Leader>ft"] = { "<Cmd>ToggleTerm direction=float<CR>", desc = "ToggleTerm float" },
          ["<Leader>fc"] = {
            function() builtin.colorscheme { enable_preview = true, ignore_builtins = true } end,
          },
          ["<Leader>ff"] = {
            function() builtin.find_files() end,
          },
          ["<Leader>fg"] = {
            function() builtin.live_grep() end,
          },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
          ["qt"] = { "<C-\\><C-n>", noremap = true, desc = "quit terminal mode" },
        },
        i = {
          ["<C-j>"] = { "<C-n>", expr = true },
          ["<C-k>"] = { "<C-p>", expr = true },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
