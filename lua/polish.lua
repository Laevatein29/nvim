local function FixAll()
  local eslint_exists = vim.fn.exists ":EslintFixAll"
  -- vim.notify("Hello from Lua!" .. eslint_exists, vim.log.levels.INFO)
  if eslint_exists > 0 then
    vim.notify("Eslint Fixed", vim.log.levels.INFO)
    vim.api.nvim_command ":EslintFixAll"
  else
    vim.notify("Eslint config is not found!", vim.log.levels.INFO)
  end
end

vim.api.nvim_create_user_command(
  "FixAll", --
  FixAll, -- Lua
  { nargs = "?" } --
)

-- TODO: add eslint fix fun

-- vim.api.nvim_create_autocmd("BufWrite", {
--   pattern = {
--     "*.vue",
--     "*.js",
--     "*.ts",
--     "*.jsx",
--     "*.tsx",
--     "*.mjs",
--   },
--   command = ":FixAll",
-- })
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
if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
