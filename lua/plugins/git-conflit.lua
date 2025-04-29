return {
  "akinsho/git-conflict.nvim",
  opts = {
    default_mappings = true,
    -- co -- choose ours
    -- ct -- choose theirs
    -- cb -- choose both
    -- c0 -- choose none
    -- ]x -- move to previous conflict
    -- [x -- move to next conflict
    default_commands = true, -- disable commands created by this plugin
    disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
    list_opener = "copen", -- command or function to open the conflicts list
    highlights = { -- They must have background color, otherwise the default color will be used
      incoming = "DiffAdd",
      current = "DiffText",
    },
  },
  version = "*",
  config = true,
}
