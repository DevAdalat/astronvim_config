-- set vim options here (vim.<first_key>.<second_key> = value)

return function(local_vim)
  local_vim.g.mapleader = " "
  local_vim.g.autoformat_enabled = true
  local_vim.g.cmp_enabled = true
  local_vim.g.autopairs_enabled = true
  local_vim.g.diagnostics_mode = 3
  local_vim.g.icons_enabled = true
  local_vim.g.ui_notifications_enabled = true
  local_vim.g.resession_enabled = false
  local_vim.opt.relativenumber = true
  local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
  local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
  local_vim.opt.number = true
  local_vim.opt.spell = false
  local_vim.opt.signcolumn = "auto"
  local_vim.opt.wrap = false
  -- local_vim.opt.list = true
  -- local_vim.opt.listchars:append "space:⋅"
  -- local_vim.opt.listchars:append "eol:↴"
  return local_vim
end
