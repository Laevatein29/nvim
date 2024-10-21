if true then return {} end
vim.g.is_local = true
if vim.g.is_local then
  return {
    {
      dir = "~/coding/scripts/scripts.nvim/",
      name = "local-script",
      cmd = { "ShowAuthor", "ShowTodo", "FixAll", "SetLocal" },
    },
  }
else
  return {
    {
      "Laevatein29/scripts.nvim",
      dependencies = {
        "stevearc/dressing.nvim",
        "nvim-telescope/telescope.nvim",
      },
      cmd = { "ShowAuthor", "ShowTodo", "FixAll" },
    },
  }
end
