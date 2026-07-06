return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#0B0C0C",
        dark_bg    = "#0B0C0C",
        darker_bg  = "#070808",
        lighter_bg = "#31363A",

        fg         = "#eae9e3",
        dark_fg    = "#CAC8C4",
        light_fg   = "#f9f9f8",
        bright_fg  = "#f9f9f8",
        muted      = "#7F7B71",

        red        = "#f24331",
        orange     = "#C84F8A",
        yellow     = "#EBD698",
        green      = "#A7A483",
        cyan       = "#ed9a1d",
        blue       = "#847B4E",
        purple     = "#9a7a3c",
        brown      = "#F14D1e",

        bright_red    = "#f24331",
        bright_yellow = "#EBD698",
        bright_green  = "#A7A483",
        bright_cyan   = "#ed9a1d",
        bright_blue   = "#847B4E",
        bright_purple = "#9a7a3c",

        accent               = "#6E6A64",
        cursor               = "#8e3a59",
        foreground           = "#eae9e3",
        background           = "#0B0C0C",
        selection            = "#45413A",
        selection_foreground = "#eae9e3",
        selection_background = "#0B0C0C",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#17181A" }
        hl.CursorLineNr = { fg = c.orange, bold = true }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        hl.SnacksPickerListCursorLine = { bg = "#17181A" }
        hl["@markup.raw.markdown_inline"] = { bg = "NONE" }
        hl["@markup.raw.block.markdown"] = { bg = "NONE" }
        hl["@markup.quote"] = { bg = "NONE" }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
