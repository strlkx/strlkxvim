-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- modular approach: using `require 'path.name'` will
-- include a plugin definition from file lua/path/name.lua

require('lazy').setup({

  require 'strlkxvim.plugins.guess-indent',

  require 'strlkxvim.plugins.gitsigns',

  require 'strlkxvim.plugins.which-key',

  require 'strlkxvim.plugins.telescope',

  require 'strlkxvim.plugins.lspconfig',

  require 'strlkxvim.plugins.conform',

  require 'strlkxvim.plugins.blink',

  require 'strlkxvim.plugins.todo-comments',

  require 'strlkxvim.plugins.mini',

  require 'strlkxvim.plugins.treesitter',

  require 'strlkxvim.plugins.autopairs',

  require 'strlkxvim.plugins.neo-tree',

  require 'strlkxvim.plugins.lint',

  -- require 'strlkxvim.plugins.debug',

  require 'strlkxvim.plugins.kanagawa',

  require 'strlkxvim.plugins.tokyonight',

  require 'strlkxvim.plugins.rose-pine',

  require 'strlkxvim.plugins.twilight',

  require 'strlkxvim.plugins.noice',

  require 'strlkxvim.plugins.oil',

}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
