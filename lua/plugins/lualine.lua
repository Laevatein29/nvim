return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = { "branch", "diff", "diagnostics" },
      lualine_b = { "mode" },
      lualine_c = {},
      lualine_x = { "filetype", "filesize", "encoding", "fileformat", "hostname" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = { "branch", "diff", "diagnostics" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = { "filetype", "filesize", "encoding", "fileformat", "hostname" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    tabline = {},
    winbar = {
      lualine_c = { { "filename", path = 1 } },
    },
    inactive_winbar = {
      lualine_c = { { "filename", path = 1 } },
    },
    extensions = {},
  },
}
