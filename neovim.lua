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
        yellow     = "#5C5852",
        orange     = "#a97b7d",
        green      = "#6E6A64",
        cyan       = "#a97b7d",
        blue       = "#92958a",
        purple     = "#aaa8a4",
        brown      = "#434549",

        bright_red    = "#f24331",
        bright_yellow = "#5C5852",
        bright_green  = "#6E6A64",
        bright_cyan   = "#a97b7d",
        bright_blue   = "#92958a",
        bright_purple = "#aaa8a4",

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