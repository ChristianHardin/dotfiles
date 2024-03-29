require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "typescript", "html" },
  sync_install = false,	
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true }, 
}
