-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {},
  config = function(_, opts)
    local npairs = require 'nvim-autopairs'
    npairs.setup(opts)

    -- Disable backtick pairing (usually useful in markdown/code blocks)
    local Rule = require 'nvim-autopairs.rule'
    npairs.get_rule('`'):with_pair(function()
      return false
    end)
  end,
}
