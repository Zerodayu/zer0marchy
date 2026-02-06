return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        -- Define colors from the object above
        local c = {
          accent = "#A00000",
          cursor = "#B91C1C",
          foreground = "#bebebe",
          background = "#121212",
          selection_foreground = "#bebebe",
          selection_background = "#333333",
          color0 = "#333333",
          color1 = "#A00000",
          color2 = "#FF0000",
          color3 = "#A00000",
          color4 = "#ff8181",
          color5 = "#D35F5F",
          color6 = "#bebebe",
          color7 = "#bebebe",
          color8 = "#8a8a8d",
          color9 = "#B91C1C",
          color10 = "#FF0000",
          color11 = "#A00000",
          color12 = "#ff8181",
          color13 = "#B91C1C",
          color14 = "#eaeaea",
          color15 = "#ffffff",
        }

        vim.cmd([[
          hi clear
          if exists("syntax_on")
            syntax reset
          endif
          set background=dark
          let g:colors_name = "zer0marchy"
        ]])

        -- Base colors
        vim.api.nvim_set_hl(0, "Normal", { fg = c.foreground, bg = c.background })
        vim.api.nvim_set_hl(0, "Cursor", { fg = c.background, bg = c.cursor })
        vim.api.nvim_set_hl(0, "Visual", { fg = c.selection_foreground, bg = c.selection_background })
        
        -- UI elements
        vim.api.nvim_set_hl(0, "LineNr", { fg = c.color8, bg = c.background })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1a1a1a" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.cursor, bg = "#1a1a1a" })
        vim.api.nvim_set_hl(0, "StatusLine", { fg = c.foreground, bg = c.color0 })
        vim.api.nvim_set_hl(0, "StatusLineNC", { fg = c.color8, bg = "#1a1a1a" })
        vim.api.nvim_set_hl(0, "VertSplit", { fg = c.color0, bg = c.background })
        
        -- Syntax highlighting
        vim.api.nvim_set_hl(0, "Comment", { fg = c.color8, italic = true })
        vim.api.nvim_set_hl(0, "Constant", { fg = c.color4 })
        vim.api.nvim_set_hl(0, "String", { fg = c.color5 })
        vim.api.nvim_set_hl(0, "Identifier", { fg = c.foreground })
        vim.api.nvim_set_hl(0, "Function", { fg = c.color2 })
        vim.api.nvim_set_hl(0, "Statement", { fg = c.accent, bold = true })
        vim.api.nvim_set_hl(0, "Keyword", { fg = c.cursor, bold = true })
        vim.api.nvim_set_hl(0, "Type", { fg = c.color4 })
        vim.api.nvim_set_hl(0, "Special", { fg = c.color5 })
        vim.api.nvim_set_hl(0, "Error", { fg = c.color15, bg = c.accent })
        vim.api.nvim_set_hl(0, "Todo", { fg = c.background, bg = c.color2 })
        
        -- Diagnostics
        vim.api.nvim_set_hl(0, "DiagnosticError", { fg = c.accent })
        vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = c.color2 })
        vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = c.color4 })
        vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = c.foreground })
      end,
    },
  },
}