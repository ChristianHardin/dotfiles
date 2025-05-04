return {
  {
    'mbbill/undotree',
    --vim.keymap.set('n', '<leader>u', function()
    --  vim.cmd.UndotreeToggle()
    --  vim.cmd.wincmd("h")
    --end),
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
  }
}
