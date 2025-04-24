-- if true then return {} end
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local buf = args.buf
    local filename = vim.api.nvim_buf_get_name(buf)
    if client == nil then return end

    if client.name == "jsonls" and filename:match "swagger.json$" then -- $ anchors the regex to the end of the filename
      vim.lsp.stop_client(client.id)
    end
  end,
})

-- format json when BufRead
vim.api.nvim_create_autocmd({ "BufRead" }, {
  pattern = "*.json",
  command = "%!jq .",
})

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
    cmd = { "ShowAuthor", "ShowTodo", "FixAll", "Check1024" },
  },
}
