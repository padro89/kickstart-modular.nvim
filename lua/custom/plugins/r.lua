return {
  'R-nvim/R.nvim',
  ft = { 'r', 'rmd', 'quarto' },
  config = function()
    vim.g.R_assign = 0
    vim.g.R_app = 'radian'
    vim.g.R_auto_start = 1
    vim.diagnostic.config { virtual_text = false }
    --✅ Use your colorscheme for R console output
    -- vim.g.rout_follow_colorscheme = true
    vim.g.rout_color_normal = 'guifg=#009fff'
    --✅ Make sure console highlighting is enabled
    vim.g.R_hl_term = 0

    vim.g.R_auto_start = 1
    --(Recommended) truecolor on
    -- vim.o.termguicolors = true

    vim.g.R_args = { '--quiet', '--no-save' }
    vim.g.R_leader = '<localleader>'

    require('r').setup()
  end,
}
-- return {
--   'R-nvim/R.nvim',
--   ft = { 'r', 'rmd', 'quarto' },
--   config = function()
--     vim.g.R_assign = 0 -- or 1 if you want _ instead of <-
--     vim.g.R_app = 'radian'
--     vim.g.R_auto_start = 1
--     vim.g.R_hl_term = 0
--     vim.g.R_args = { '--quiet', '--no-save' }
--     vim.g.R_leader = '<localleader>'
--   end,
-- }
