return {
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin -- TODO: better than lualine? configure?

    -- local statusline = require 'mini.statusline'
    -- -- local custom_line = function()
    -- --   local mode, mode_hl = statusline.section_mode { trunc_width = 100 }
    -- --   local git = statusline.section_git { trunc_width = 75 }
    -- --   local diff = MiniStatusline.section_diff { trunc_width = 75 }
    -- --   local diagnostics = statusline.section_diagnostics { trunc_width = 75 }
    -- --   -- local lsp = statusline.section_lsp { trunc_width = 75 }
    -- --   local filename = statusline.section_filename { trunc_width = 140 }
    -- --   local fileinfo = MiniStatusline.section_fileinfo { trunc_width = 120 }
    -- --   local location = statusline.section_location { trunc_width = 75 }
    -- --   local search = statusline.section_searchcount { trunc_width = 75 }
    -- --
    -- --   return statusline.combine_groups {
    -- --     { hl = mode_hl, strings = { mode } },
    -- --     { hl = 'MiniStatuslineDevinfo', strings = { git, diff } },
    -- --     '%<',
    -- --     { hl = 'MiniStatuslineFilename', strings = { filename } },
    -- --     '%=',
    -- --     { hl = 'MiniStatuslineFileInfo', strings = { fileinfo } },
    -- --     { hl = mode_hl, strings = { search, location } },
    -- --   }
    -- -- end
    -- -- set use_icons to true if you have a Nerd Font
    -- statusline.setup {
    --   use_icons = vim.g.have_nerd_font,
    --   -- content = {
    --   --   active = custom_line,
    --   -- },
    -- }
    --
    -- -- You can configure sections in the statusline by overriding their
    -- -- default behavior. For example, here we set the section for
    -- -- cursor location to LINE:COLUMN
    -- ---@diagnostic disable-next-line: duplicate-set-field
    -- statusline.section_location = function()
    --   return '%2l:%-2v'
    -- end

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}