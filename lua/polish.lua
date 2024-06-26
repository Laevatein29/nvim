local function has_eslint_config()
  for _, config_file in ipairs { ".eslintrc.js", ".eslintrc.json", ".eslintrc", ".eslintrc.yaml", ".eslintrc.yml" } do
    if vim.fn.filereadable(config_file) == 1 then
      vim.api.nvim_command "echo 'eslint!'"
      return true
    else
      return false
    end
  end
end

local function FixAll()
  if has_eslint_config() then
    vim.api.nvim_command "echo 'Hello!'"
  else
    vim.api.nvim_command "echo 'eslint config not found!'"
  end
end

vim.api.nvim_create_user_command(
  "FixAll", --
  FixAll, -- Lua
  { nargs = "?" } --
)

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
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = {
--     "*.vue",
--     "*.js",
--     "*.ts",
--     "*.jsx",
--     "*.tsx",
--     "*.mjs",
--   },
--   command = ":EslintFixAll",
-- })
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
