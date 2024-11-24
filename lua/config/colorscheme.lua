-- catppuccin mocha colorscheme

-- catppuccin mocha palette
local palette = {
  rosewater = "#f5e0dc",
  flamingo  = "#f2cdcd",
  pink      = "#f5c2e7",
  mauve     = "#cba6f7",
  red       = "#f38ba8",
  maroon    = "#eba0ac",
  peach     = "#fab387",
  yellow    = "#f9e2af",
  green     = "#a6e3a1",
  teal      = "#94e2d5",
  sky       = "#89dceb",
  sapphire  = "#74c7ec",
  blue      = "#89b4fa",
  lavender  = "#b4befe",
  text      = "#cdd6f4",
  subtext1  = "#bac2de",
  subtext0  = "#a6adc8",
  overlay2  = "#9399b2",
  overlay1  = "#7f849c",
  overlay0  = "#6c7086",
  surface2  = "#585b70",
  surface1  = "#45475a",
  surface0  = "#313244",
  base      = "#1e1e2e",
  mantle    = "#181825",
  crust     = "#11111b",
}

-- highlight groups
local highlights = {
  Normal         = { fg = palette.text, bg = palette.crust },
  Comment        = { fg = palette.overlay2 },
  Constant       = { fg = palette.peach },
  String         = { fg = palette.green },
  Character      = { fg = palette.pink },
  Number         = { fg = palette.peach },
  Boolean        = { fg = palette.peach },
  Float          = { fg = palette.peach },
  Identifier     = { fg = palette.text },
  Function       = { fg = palette.blue },
  Statement      = { fg = palette.mauve },
  Conditional    = { fg = palette.mauve },
  Repeat         = { fg = palette.mauve },
  Label          = { fg = palette.mauve },
  Operator       = { fg = palette.sky },
  Keyword        = { fg = palette.mauve },
  Exception      = { fg = palette.red },
  PreProc        = { fg = palette.mauve },
  Include        = { fg = palette.red },
  Define         = { fg = palette.mauve },
  Macro          = { fg = palette.mauve },
  PreCondit      = { fg = palette.mauve },
  Type           = { fg = palette.yellow },
  StorageClass   = { fg = palette.mauve },
  Structure      = { fg = palette.yellow },
  Typedef        = { fg = palette.yellow },
  Special        = { fg = palette.red },
  SpecialChar    = { fg = palette.pink },
  Tag            = { fg = palette.blue },
  Delimiter      = { fg = palette.overlay2 },
  SpecialComment = { fg = palette.overlay2 },
  Debug          = { fg = palette.red },
  Underlined     = { style = "underline" },
  Error          = { fg = palette.red },
  Todo           = { fg = palette.teal, style = "bold" },
}

-- apply highlights
for group, opts in pairs(highlights) do
  local cmd = "highlight " .. group
  if opts.fg then
    cmd = cmd .. " guifg=" .. opts.fg
  end
  if opts.bg then
    cmd = cmd .. " guibg=" .. opts.bg
  end
  if opts.style then
    cmd = cmd .. " gui=" .. opts.style
  end
  vim.cmd(cmd)
end
