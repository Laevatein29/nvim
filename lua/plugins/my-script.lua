-- if true then return {} end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {
    "*.vue",
    "*.js",
    "*.ts",
    "*.jsx",
    "*.tsx",
    "*.mjs",
  },
  command = ":FixAll",
})
--
-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "vue",
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  callback = function() vim.b.autoformat = false end,
})

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
