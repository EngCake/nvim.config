return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        float = {
          enable = true,
        },
      },
    }
    vim.keymap.set('n', '<leader>E', require('nvim-tree.api').tree.toggle, { desc = 'Toggle the file explorer window' })
  end,
}
