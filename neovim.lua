return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#0d0d0c",
        dark_bg    = "#0a0a09",
        darker_bg  = "#070706",
        lighter_bg = "#252524",

        fg         = "#b9b9b9",
        dark_fg    = "#8b8b8b",
        light_fg   = "#c4c4c4",
        bright_fg  = "#cbcbcb",
        muted      = "#525252",

        red        = "#8f6969",
        yellow     = "#4e4747",
        orange     = "#a08080",
        green      = "#6E6A64",
        cyan       = "#868686",
        blue       = "#92958a",
        purple     = "#747474",
        brown      = "#604d4d",

        bright_red    = "#7c7c7c",
        bright_yellow = "#a0a0a0",
        bright_green  = "#8b8b8b",
        bright_cyan   = "#868686",
        bright_blue   = "#686868",
        bright_purple = "#747474",

        accent               = "#6E6A64",
        cursor               = "#b9b9b9",
        foreground           = "#b9b9b9",
        background           = "#0d0d0c",
        selection             = "#252524",
        selection_foreground = "#b9b9b9",
        selection_background = "#252524",
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
