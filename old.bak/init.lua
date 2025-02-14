require 'core.options'
require 'core.keymaps'
require 'core.snippets'

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  -- Colorscheme
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require 'plugins.colorscheme'
    end,
  },
  -- require 'plugins.colortheme',
  require 'plugins.neotree',
  require 'plugins.bufferline',
  require 'plugins.lualine',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.autocomplete',
  require 'plugins.autoformatting',
  require 'plugins.gitsigns',
  require 'plugins.alpha',
  require 'plugins.indent-blankline',
  require 'plugins.misc',
  require 'plugins.toggleterm',
}
