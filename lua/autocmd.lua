-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('glnvim-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Custom autocmds for Oil
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'oil',
  callback = function()
    -- Set local options for oil buffers
    vim.opt_local.colorcolumn = ''
    vim.opt_local.signcolumn = 'no'

    -- Auto-save when leaving oil buffer with changes
    vim.api.nvim_create_autocmd('BufLeave', {
      buffer = 0,
      callback = function()
        if vim.bo.modified then
          vim.cmd 'silent! write'
        end
      end,
    })
  end,
})

-- vim: ts=2 sts=2 sw=2 et
