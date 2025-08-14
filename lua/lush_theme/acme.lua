--
-- Built with lush.nvim'
--
-- Acme Theme for Neovim
-- Port of Helix's acme theme
-- Based on https://github.com/helix-editor/helix/blob/master/runtime/themes/acme.toml

local lush = require('lush')
local hsl = lush.hsl

-- Define the color palette
local white = hsl("#ffffff")
local acme_bg = hsl("#ffffea")
local black = hsl("#000000")
local selected = hsl("#eeee9e")
local acme_bar_bg = hsl("#aeeeee")
local acme_bar_inactive = hsl("#eaffff")
local cursor = hsl("#444444")
local red = hsl("#a0342f")
local green = hsl("#065905")
local indent = hsl("#aaaaaa")
local orange = hsl("#f0ad4e")
local gray = hsl("#777777")

local theme = lush(function()
  return {
    -- Basic
    Normal       { fg = black, bg = acme_bg },
    NormalFloat  { Normal },
    NormalNC     { Normal },
    
    -- Cursor
    Cursor       { fg = acme_bg, bg = cursor },
    CursorLine   { bg = selected },
    CursorColumn { CursorLine },
    ColorColumn  { bg = acme_bar_inactive },
    
    -- Line Numbers
    LineNr       { fg = gray, bg = acme_bg },
    CursorLineNr { fg = black, bg = selected, gui = "bold" },
    SignColumn   { bg = acme_bg },
    
    -- Visual
    Visual       { fg = black, bg = selected },
    VisualNOS    { Visual },
    
    -- Search
    Search       { fg = black, bg = selected },
    IncSearch    { fg = black, bg = acme_bar_bg, gui = "bold" },
    CurSearch    { IncSearch },
    
    -- Folds
    Folded       { fg = gray, bg = acme_bar_inactive },
    FoldColumn   { fg = gray, bg = acme_bg },
    
    -- Diffs
    DiffAdd      { fg = green, bg = acme_bg },
    DiffChange   { fg = orange, bg = acme_bg },
    DiffDelete   { fg = red, bg = acme_bg },
    DiffText     { fg = black, bg = selected, gui = "bold" },
    
    -- Messages
    ErrorMsg     { fg = red, gui = "bold" },
    WarningMsg   { fg = orange, gui = "bold" },
    ModeMsg      { fg = black },
    MoreMsg      { fg = green },
    Question     { fg = green },
    
    -- Popup Menu
    Pmenu        { fg = black, bg = acme_bar_inactive },
    PmenuSel     { fg = black, bg = selected },
    PmenuSbar    { bg = indent },
    PmenuThumb   { bg = gray },
    
    -- Status Line
    StatusLine   { fg = black, bg = acme_bar_bg },
    StatusLineNC { fg = gray, bg = acme_bar_inactive },
    WinBar       { StatusLine },
    WinBarNC     { StatusLineNC },
    
    -- Tabs
    TabLine      { fg = gray, bg = acme_bar_inactive },
    TabLineFill  { bg = acme_bar_inactive },
    TabLineSel   { fg = black, bg = acme_bar_bg },
    
    -- Window Separator
    WinSeparator { fg = indent },
    VertSplit    { WinSeparator },
    
    -- Spelling
    SpellBad     { gui = "undercurl", sp = red },
    SpellCap     { gui = "undercurl", sp = orange },
    SpellLocal   { gui = "undercurl", sp = orange },
    SpellRare    { gui = "undercurl", sp = orange },
    
    -- Wild Menu
    WildMenu     { PmenuSel },
    
    -- Directory
    Directory    { fg = black, gui = "bold" },
    
    -- Special
    Title        { fg = black, gui = "bold" },
    SpecialKey   { fg = gray },
    NonText      { fg = indent },
    MatchParen   { fg = black, bg = acme_bar_bg, gui = "bold" },
    
    -- Conceal
    Conceal      { fg = gray },
    
    -- Quick Fix
    QuickFixLine { CursorLine },
    
    -- Syntax Highlighting
    Comment      { fg = gray },
    
    Constant     { fg = red },
    String       { fg = green },
    Character    { String },
    Number       { Constant },
    Boolean      { Constant },
    Float        { Number },
    
    Identifier   { fg = black },
    Function     { Identifier },
    
    Statement    { fg = black, gui = "bold" },
    Conditional  { Statement },
    Repeat       { Statement },
    Label        { Statement },
    Operator     { fg = black },
    Keyword      { Statement },
    Exception    { fg = red, gui = "bold" },
    
    PreProc      { fg = orange },
    Include      { PreProc },
    Define       { PreProc },
    Macro        { PreProc },
    PreCondit    { PreProc },
    
    Type         { fg = black, gui = "bold" },
    StorageClass { Type },
    Structure    { Type },
    Typedef      { Type },
    
    Special      { fg = orange },
    SpecialChar  { Special },
    Tag          { Special },
    Delimiter    { fg = black },
    SpecialComment { fg = gray },
    Debug        { fg = red },
    
    Underlined   { gui = "underline" },
    Ignore       { fg = gray },
    Error        { fg = red, gui = "bold" },
    Todo         { fg = orange, bg = acme_bg, gui = "bold" },
    
    -- LSP
    DiagnosticError { fg = red },
    DiagnosticWarn  { fg = orange },
    DiagnosticInfo  { fg = black },
    DiagnosticHint  { fg = gray },
    
    DiagnosticVirtualTextError { DiagnosticError },
    DiagnosticVirtualTextWarn  { DiagnosticWarn },
    DiagnosticVirtualTextInfo  { DiagnosticInfo },
    DiagnosticVirtualTextHint  { DiagnosticHint },
    
    DiagnosticUnderlineError { gui = "undercurl", sp = red },
    DiagnosticUnderlineWarn  { gui = "undercurl", sp = orange },
    DiagnosticUnderlineInfo  { gui = "undercurl", sp = black },
    DiagnosticUnderlineHint  { gui = "undercurl", sp = gray },
    
    -- LSP Semantic Tokens
    ["@lsp.type.comment"] { Comment },
    ["@lsp.type.enum"] { Type },
    ["@lsp.type.interface"] { Type },
    ["@lsp.type.keyword"] { Keyword },
    ["@lsp.type.namespace"] { Identifier },
    ["@lsp.type.parameter"] { Identifier },
    ["@lsp.type.property"] { Identifier },
    ["@lsp.type.string"] { String },
    ["@lsp.type.type"] { Type },
    ["@lsp.type.variable"] { Identifier },
    
    -- Treesitter
    ["@annotation"] { PreProc },
    ["@attribute"] { PreProc },
    ["@boolean"] { Boolean },
    ["@character"] { Character },
    ["@character.special"] { SpecialChar },
    ["@comment"] { Comment },
    ["@conditional"] { Conditional },
    ["@constant"] { Constant },
    ["@constant.builtin"] { Special },
    ["@constant.macro"] { Define },
    ["@constructor"] { Function },
    ["@debug"] { Debug },
    ["@define"] { Define },
    ["@error"] { Error },
    ["@exception"] { Exception },
    ["@field"] { Identifier },
    ["@float"] { Float },
    ["@function"] { Function },
    ["@function.builtin"] { Special },
    ["@function.call"] { Function },
    ["@function.macro"] { Macro },
    ["@include"] { Include },
    ["@keyword"] { Keyword },
    ["@keyword.function"] { Keyword },
    ["@keyword.operator"] { Keyword },
    ["@keyword.return"] { Keyword },
    ["@label"] { Label },
    ["@method"] { Function },
    ["@method.call"] { Function },
    ["@namespace"] { Identifier },
    ["@none"] { },
    ["@number"] { Number },
    ["@operator"] { Operator },
    ["@parameter"] { Identifier },
    ["@parameter.reference"] { Identifier },
    ["@preproc"] { PreProc },
    ["@property"] { Identifier },
    ["@punctuation.bracket"] { Delimiter },
    ["@punctuation.delimiter"] { Delimiter },
    ["@punctuation.special"] { Delimiter },
    ["@repeat"] { Repeat },
    ["@storageclass"] { StorageClass },
    ["@string"] { String },
    ["@string.escape"] { SpecialChar },
    ["@string.regex"] { String },
    ["@string.special"] { SpecialChar },
    ["@symbol"] { Identifier },
    ["@tag"] { Tag },
    ["@tag.attribute"] { Identifier },
    ["@tag.delimiter"] { Delimiter },
    ["@text"] { fg = black },
    ["@text.danger"] { ErrorMsg },
    ["@text.emphasis"] { gui = "italic" },
    ["@text.environment"] { Macro },
    ["@text.environment.name"] { Type },
    ["@text.literal"] { String },
    ["@text.math"] { Special },
    ["@text.note"] { SpecialComment },
    ["@text.reference"] { Constant },
    ["@text.strong"] { gui = "bold" },
    ["@text.title"] { Title },
    ["@text.todo"] { Todo },
    ["@text.underline"] { Underlined },
    ["@text.uri"] { Underlined },
    ["@text.warning"] { WarningMsg },
    ["@type"] { Type },
    ["@type.builtin"] { Type },
    ["@type.definition"] { Typedef },
    ["@type.qualifier"] { Type },
    ["@variable"] { Identifier },
    ["@variable.builtin"] { Special },
  }
end)

return theme