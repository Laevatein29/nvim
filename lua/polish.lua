local function FixAll()
    local eslint_exists = vim.fn.exists(":EslintFixAll") > 0
  if eslint_exists then
    vim.api.nvim_command(":EslintFixAll")
    vim.api.nvim_command "echo 'Eslint Fixed!'"
  else
    vim.api.nvim_command "echo 'Eslint config is not found!'"
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
    "lua",
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
