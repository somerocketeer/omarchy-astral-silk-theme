-- LazyVim plugin spec: Astral Silk palette on Tokyonight base
return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      on_colors = function(c)
        c.bg           = "#0C0E14"
        c.bg_dark      = "#0F141D"
        c.bg_highlight = "#171D2A"
        c.fg           = "#F5F7FA"
        c.fg_dark      = "#C9D0DA"
        c.comment      = "#A3ACB8"

        c.blue    = "#6EA8FE"
        c.cyan    = "#3FD9D0"
c.magenta = "#A584FF"
        c.red     = "#FF6E6E"
        c.green   = "#5CCF76"
        c.yellow  = "#FFD166"

        c.terminal_black   = "#0F141D"
        c.terminal_red     = "#FF6E6E"
        c.terminal_green   = "#5CCF76"
        c.terminal_yellow  = "#FFD166"
        c.terminal_blue    = "#6EA8FE"
c.terminal_magenta = "#A584FF"
        c.terminal_cyan    = "#3FD9D0"
        c.terminal_white   = "#F5F7FA"
      end,
      on_highlights = function(hl, c)
        hl.Visual        = { bg = "#263247" }
        hl.CursorLine    = { bg = c.bg_highlight }
        hl.CursorLineNr  = { fg = "#E6B673", bold = true }
        hl.LineNr        = { fg = "#A3ACB8" }

        hl.NormalFloat   = { bg = c.bg_highlight, fg = c.fg }
        hl.FloatBorder   = { fg = "#E6B673", bg = c.bg_highlight }

        hl.Pmenu         = { bg = c.bg_highlight, fg = c.fg }
        hl.PmenuSel      = { bg = "#2A3146", fg = c.fg, bold = true }

        hl.TelescopeBorder = { fg = c.blue, bg = c.bg_highlight }
        hl.TelescopeTitle  = { fg = "#E6B673", bold = true }

        hl.Delimiter = { fg = "#A3ACB8" }
        hl["@punctuation.delimiter"] = { fg = "#A3ACB8" }
        hl["@punctuation.bracket"]   = { fg = "#A3ACB8" }
        hl["@punctuation.special"]   = { fg = "#A3ACB8" }

        -- Semantic tweaks: violet keywords, cyan labels
hl["@keyword"] = { fg = "#A584FF" }
        hl["@label"]   = { fg = c.cyan }

        hl.DiagnosticError = { fg = c.red }
        hl.DiagnosticWarn  = { fg = c.yellow }
        hl.DiagnosticInfo  = { fg = c.blue }
        hl.DiagnosticHint  = { fg = c.cyan }
        hl.DiagnosticVirtualTextError = { fg = c.red, bg = "NONE" }
        hl.DiagnosticVirtualTextWarn  = { fg = c.yellow, bg = "NONE" }
        hl.DiagnosticVirtualTextInfo  = { fg = c.blue, bg = "NONE" }
        hl.DiagnosticVirtualTextHint  = { fg = c.cyan, bg = "NONE" }

        hl.GitSignsAdd    = { fg = c.green }
        hl.GitSignsChange = { fg = c.blue }
        hl.GitSignsDelete = { fg = c.red }

        hl.DiffAdd    = { fg = c.green, bg = "NONE" }
        hl.DiffChange = { fg = c.blue,  bg = "NONE" }
        hl.DiffDelete = { fg = c.red,   bg = "NONE" }
        hl.DiffText   = { fg = c.blue,  bg = "NONE" }

        hl.WhichKey         = { fg = "#E6B673", bold = true }
        hl.WhichKeyGroup    = { fg = "#E6B673" }
        hl.WhichKeySeparator= { fg = "#A3ACB8" }
        hl.WhichKeyDesc     = { fg = c.fg }
        hl.WhichKeyValue    = { fg = c.cyan }

        hl.LazyButtonActive = { fg = c.bg, bg = "#E6B673", bold = true }
        hl.LazyH1           = { fg = c.bg, bg = "#E6B673", bold = true }
        hl.LazyProgressDone = { fg = "#E6B673" }

        hl.AlphaHeader     = { fg = "#E6B673", bold = true }
        hl.AlphaFooter     = { fg = "#A3ACB8" }
        hl.AlphaShortcut   = { fg = "#E6B673", bold = true }
        hl.AlphaButton     = { fg = c.cyan }
        hl.AlphaButtons    = { fg = c.cyan }
        hl.AlphaButtonText = { fg = c.cyan }

        hl.Title   = { fg = "#E6B673", bold = true }
        hl.Special = { fg = c.cyan }

        hl.StatusLine     = { bg = c.bg_highlight, fg = c.fg }
        hl.StatusLineNC   = { bg = c.bg_dark,      fg = c.comment }
        hl.TabLineSel     = { bg = c.bg_highlight, fg = "#E6B673", bold = true }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
