local M = {}

M.base_30 = {
  white = "#d8d8d8",
  darker_black = "#0d0d0d",
  black = "#131313",
  black2 = "#1a1b1c",
  one_bg = "#1f2022",
  one_bg2 = "#282a2d",
  one_bg3 = "#323437",
  grey = "#505050",
  grey_fg = "#707070",
  grey_fg2 = "#8a8a8a",
  light_grey = "#b8b8b8",

  red = "#d4717c",
  baby_pink = "#e6a6b3",
  pink = "#d883a0",
  line = "#282a2d",

  green = "#90af86",
  vibrant_green = "#b9d3ac",
  nord_blue = "#85a5e9",
  blue = "#85a5e9",
  yellow = "#ceb27a",
  sun = "#ddc18e",
  purple = "#b89ad8",
  dark_purple = "#9476aa",
  teal = "#7ac7ba",
  orange = "#da9f70",
  cyan = "#8bcdf3",

  statusline_bg = "#1a1b1c",
  lightbg = "#282a2d",
  pmenu_bg = "#323437",
  folder_bg = "#8bcdf3",
}

M.base_16 = {
  base00 = "#131313",
  base01 = "#1a1b1c",
  base02 = "#1f2022",
  base03 = "#323437",
  base04 = "#5a5c60",
  base05 = "#d8d8d8",
  base06 = "#e0e0e0",
  base07 = "#f0f0f0",

  base08 = "#d4717c",
  base09 = "#da9f70",
  base0A = "#ceb27a",
  base0B = "#90af86",
  base0C = "#8bcdf3",
  base0D = "#85a5e9",
  base0E = "#b89ad8",
  base0F = "#9476aa",
}

M.polish_hl = {
  defaults = {
    Normal = { fg = "#d8d8d8", bg = "#131313" },
    NormalNC = { fg = "#b8b8b8", bg = "#131313" },
    NormalFloat = { fg = "#d8d8d8", bg = "#282a2d" },
    FloatBorder = { fg = "#707070", bg = "#282a2d" },

    CursorLine = { bg = "#1f2022" },
    ColorColumn = { bg = "#1f2022" },
    LineNr = { fg = "#505050", bg = "#131313" },
    CursorLineNr = { fg = "#d8d8d8", bg = "#1f2022", bold = true },
    SignColumn = { fg = "#505050", bg = "#131313" },

    Visual = { fg = "#131313", bg = "#c8c8c8" },
    Search = { fg = "#131313", bg = "#b8b8b8" },
    IncSearch = { fg = "#131313", bg = "#e0e0e0", bold = true },
    CurSearch = { fg = "#131313", bg = "#e0e0e0", bold = true },

    Pmenu = { fg = "#d8d8d8", bg = "#282a2d" },
    PmenuSel = { fg = "#131313", bg = "#c8c8c8", bold = true },
    PmenuThumb = { bg = "#707070" },

    StatusLine = { fg = "#d8d8d8", bg = "#282a2d" },
    StatusLineNC = { fg = "#707070", bg = "#1f2022" },

    Comment = { fg = "#5a5c60", italic = true },
    String = { fg = "#90af86" },
    Number = { fg = "#da9f70" },
    Boolean = { fg = "#ddc18e", bold = true },
    Function = { fg = "#d8d8d8", bold = true },
    Keyword = { fg = "#b89ad8", bold = true },
    Statement = { fg = "#ddc18e", bold = true },
    Type = { fg = "#8bcdf3" },
    Constant = { fg = "#8bcdf3" },
    Identifier = { fg = "#d8d8d8" },
    Operator = { fg = "#b8b8b8" },
    Delimiter = { fg = "#8a8a8a" },
    Special = { fg = "#d8d8d8" },
    Todo = { fg = "#131313", bg = "#d8d8d8", bold = true },
    Error = { fg = "#131313", bg = "#d4717c", bold = true },
  },

  treesitter = {
    ["@comment"] = { fg = "#5a5c60", italic = true },
    ["@string"] = { fg = "#90af86" },
    ["@string.escape"] = { fg = "#a0c8a0" },
    ["@number"] = { fg = "#da9f70" },
    ["@number.float"] = { fg = "#da9f70" },
    ["@boolean"] = { fg = "#ddc18e", bold = true },

    ["@function"] = { fg = "#d8d8d8", bold = true },
    ["@function.call"] = { fg = "#c0c0c0" },
    ["@function.builtin"] = { fg = "#8bcdf3" },
    ["@function.method"] = { fg = "#d8d8d8" },
    ["@function.method.call"] = { fg = "#c0c0c0" },

    ["@keyword"] = { fg = "#b89ad8", bold = true },
    ["@keyword.function"] = { fg = "#b89ad8", bold = true },
    ["@keyword.return"] = { fg = "#b89ad8", bold = true },
    ["@keyword.operator"] = { fg = "#b89ad8", bold = true },
    ["@operator"] = { fg = "#b8b8b8" },

    ["@type"] = { fg = "#8bcdf3" },
    ["@type.builtin"] = { fg = "#8bcdf3", bold = true },

    ["@variable"] = { fg = "#d8d8d8" },
    ["@variable.parameter"] = { fg = "#b8b8b8" },
    ["@variable.builtin"] = { fg = "#ddc18e" },
    ["@constant"] = { fg = "#8bcdf3" },
    ["@constant.builtin"] = { fg = "#d8d8d8", bold = true },

    ["@property"] = { fg = "#85a5e9" },
    ["@field"] = { fg = "#85a5e9" },
    ["@punctuation.delimiter"] = { fg = "#8a8a8a" },
    ["@punctuation.bracket"] = { fg = "#b8b8b8" },

    ["@markup.heading"] = { fg = "#d8d8d8", bold = true },
    ["@markup.link"] = { fg = "#85a5e9", underline = true },
    ["@markup.link.url"] = { fg = "#85a5e9", underline = true },

    ["@constant.macro"] = { fg = "#b89ad8", bold = true },
    ["@function.macro"] = { fg = "#b89ad8", bold = true },
    ["@keyword.directive"] = { fg = "#da9f70", bold = true },
    ["@keyword.directive.define"] = { fg = "#b89ad8", bold = true },
  },

  nvimtree = {
    NvimTreeNormal = { fg = "#d8d8d8", bg = "#131313" },
    NvimTreeFolderName = { fg = "#a0a0a0" },
    NvimTreeOpenedFolderName = { fg = "#d8d8d8", bold = true },
    NvimTreeRootFolder = { fg = "#d8d8d8", bold = true },
    NvimTreeGitDirty = { fg = "#ceb27a" },
    NvimTreeGitNew = { fg = "#90af86" },
    NvimTreeGitDeleted = { fg = "#d4717c" },
  },

  telescope = {
    TelescopeNormal = { fg = "#d8d8d8", bg = "#282a2d" },
    TelescopeBorder = { fg = "#707070", bg = "#282a2d" },
    TelescopePromptNormal = { fg = "#d8d8d8", bg = "#1f2022" },
    TelescopePromptBorder = { fg = "#707070", bg = "#1f2022" },
    TelescopeSelection = { fg = "#131313", bg = "#c8c8c8", bold = true },
    TelescopeMatching = { fg = "#ddc18e", bold = true },
    TelescopeResultsIdentifier = { fg = "#b8b8b8" },
    TelescopeMultiSelection = { fg = "#b8b8b8" },
  },
}

M.type = "dark"

return M
