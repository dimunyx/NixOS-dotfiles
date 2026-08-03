 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#000000',
    base01 = '#0f1325',
    base02 = '#171c32',
    base03 = '#5d6682',
    base04 = '#9aa5ce',
    base05 = '#c0caf5',
    base06 = '#c0caf5',
    base07 = '#c0caf5',
    base08 = '#f7768e',
    base09 = '#9ece6a',
    base0A = '#bb9af7',
    base0B = '#7aa2f7',
    base0C = '#c1e996',
    base0D = '#87abf8',
    base0E = '#af89f6',
    base0F = '#bb0023',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#c0caf5',          bg = '#000000' })
  hi('TelescopeBorder',         { fg = '#5d6682',             bg = '#000000' })
  hi('TelescopePromptNormal',   { fg = '#c0caf5',          bg = '#000000' })
  hi('TelescopePromptBorder',   { fg = '#5d6682',             bg = '#000000' })
  hi('TelescopePromptPrefix',   { fg = '#7aa2f7',             bg = '#000000' })
  hi('TelescopePromptCounter',  { fg = '#9aa5ce',  bg = '#000000' })
  hi('TelescopePromptTitle',    { fg = '#000000',             bg = '#7aa2f7' })
  hi('TelescopePreviewTitle',   { fg = '#000000',             bg = '#bb9af7' })
  hi('TelescopeResultsTitle',   { fg = '#000000',             bg = '#9ece6a' })
  hi('TelescopeSelection',      { fg = '#c0caf5',          bg = '#171c32' })
  hi('TelescopeSelectionCaret', { fg = '#7aa2f7',             bg = '#171c32' })
  hi('TelescopeMatching',       { fg = '#7aa2f7',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
