return {
  'VonHeikemen/searchbox.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<leader>sr', ':SearchBoxReplace<CR>', desc = 'Search and Replace' },
    { '<leader>SR', ':SearchBoxReplace exact=true visual_mode=true<CR>', desc = 'Visual Search and Replace' },
  },
}
