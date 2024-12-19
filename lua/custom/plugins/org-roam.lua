vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'

return {
  'chipsenkbeil/org-roam.nvim',
  tag = '0.1.1',
  dependencies = {
    {
      'nvim-orgmode/orgmode',
      tag = '0.3.7',
    },
  },
  config = function()
    require('org-roam').setup {
      directory = '~/org-roam/files',
      -- optional
      org_files = {
        '~/org-files/',
        '~/Dropbox/phone-org-files/*',
      },
      database = {
        persist = true,
        path = 'c:/users/shawn/org-roam/db/db',
      },
      ui = {
        node_buffer = {
          unique = true,
        },
      },
    }
  end,
}
