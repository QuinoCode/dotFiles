require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  require 'kickstart/plugins/autopairs',

  require 'kickstart/plugins/cmp',

  require 'kickstart/plugins/conform',

  require 'kickstart/plugins/debug',

  require 'kickstart/plugins/github-colorscheme',

  require 'kickstart/plugins/gitsigns',

  require 'kickstart/plugins/indent_line',

  require 'kickstart/plugins/lint',

  require 'kickstart/plugins/lsp-config',

  require 'kickstart/plugins/mini',

  require 'kickstart/plugins/neo-tree',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/todo-comments',

  require 'kickstart/plugins/treesitter',

  require 'custom/plugins/vim-fugitive',

  require 'kickstart/plugins/which-key',
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
