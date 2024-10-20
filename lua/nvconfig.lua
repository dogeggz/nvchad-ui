local pallete = {
  dark_gray = "#22383f",
  light_gray = "#528694",
  dark_blue = "#042034",
  blue = "#1a6397",
  light_blue = "#016ab8",
  dark_red = "#57040e",
  red = "#b7221e",
  light_red = "#bc2e2c",
  violet = "#494fb6",
  black = "#151c28",
  light_black = "#042034",
  dark_green = "#2b3300",
  light_green = "#bafb00",
  magenta = "#f255a1",
  white = "#fdf6e3",
  pure_black = "#000000",
}

---@type ChadrcConfig
local options = {
  ui = {
    cmp = {
      icons = true,
      lspkind_text = true,
      style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    },

    telescope = { style = "bordered" }, -- borderless / bordered

    statusline = {
      enabled = true,
      theme = "default", -- default/vscode/vscode_colored/minimal
      separator_style = "round", -- deafult/round/block/arrow
      order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
      modules = nil,
      lualine = true,
    },

    -- lazyload it when there are 1+ buffers
    tabufline = {
      enabled = true,
      lazyload = true,
      -- order = { "treeOffset", "buffers", "tabs", "btns" },
      order = { "buffers", "tabs", "btns" },
      modules = nil,
    },
  },

  cheatsheet = { theme = "grid", excluded_groups = { "terminal (t)", "autopairs", "Nvim" } }, -- simple/gridJ

  lsp = { signature = true },

  base46 = {
    theme_toggle = { "solarized_dark", "solarized_osaka" },
    theme = "solarized_osaka", -- default theme
    transparency = true, -- statusline, tabufline not transparent
    changed_themes = {},
    hl_add = {},
    -- base46 integrations
    integrations = {
      "blankline",
      "cmp",
      "statusline",
      "devicons",
      "nvimtree",
      "treesitter",
      "whichkey",
      "syntax",
      "telescope",
      "hop",
      "lsp",
      "mason",
      "trouble",
      "todo",
      "dap",
      "notify",
    },
    hl_override = {

      -- General
      -- LineNr = { fg = pallete.light_gray }, -- line number color
      -- CursorLineNr = { fg = pallete.light_blue }, -- cursor line number color
      CursorLine = { bg = "#042034" }, -- cursor line color
      DiagnosticInfo = { fg = pallete.light_gray }, -- noice cmdline, etc.
      DiagnosticWarn = { fg = pallete.light_gray }, -- search, warn, etc.
      FloatBorder = { fg = pallete.light_gray }, -- border color for float windows
      Search = { bg = pallete.light_gray, fg = pallete.dark_blue }, -- search color

      -- telescope
      TelescopePromptBorder = { fg = pallete.light_gray },
      TelescopeBorder = { fg = pallete.light_gray },
      TelescopeSelection = { bg = pallete.light_blue, fg = pallete.black },

      -- vim mode
      St_NormalMode = { bg = pallete.blue },
      St_NormalModeSep = { fg = pallete.blue },
      St_CommandMode = { bg = pallete.light_gray },
      St_CommandModeSep = { fg = pallete.light_gray },
      St_InsertMode = { bg = pallete.violet },
      St_InsertModeSep = { fg = pallete.violet },

      -- notify
      NotifyINFOIcon = { fg = pallete.blue },
      NotifyINFOTitle = { fg = pallete.blue },
      NotifyINFOBorder = { fg = pallete.blue },
    },
  },
}

return vim.tbl_deep_extend("force", options, require "chadrc")
