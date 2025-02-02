return {
    'catppuccin/nvim',
    priority = 1001,
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
}
