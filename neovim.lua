return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#0B0C0C",
        dark_bg    = "#0B0C0C",
        darker_bg  = "#0B0C0C",
        lighter_bg = "#666666",

        fg         = "#CFCDC9",
        dark_fg    = "#666666",
        light_fg   = "#CAC8C4",
        bright_fg  = "#CFCDC9",
        muted      = "#666666",

        red        = "#f24331",
        yellow     = "#ed9a1d",
        orange     = "#bf3c7c",
        green      = "#6E6A64",
        cyan       = "#d4c783",
        blue       = "#999592",
        purple     = "#aaa8a4",
        brown      = "#bcbab6",

        bright_red    = "#c63222",
        bright_yellow = "#e3b26a",
        bright_green  = "#00A19B",
        bright_cyan   = "#bfbd70",
        bright_blue   = "#91959b",
        bright_purple = "#55575b",

        accent               = "#6E6A64",
        cursor               = "#544f51",
        foreground           = "#CFCDC9",
        background           = "#0B0C0C",
        selection             = "#CFCDC9",
        selection_foreground = "#0B0C0C",
        selection_background = "#CFCDC9",
      },
    },
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}