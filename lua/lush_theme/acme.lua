--
-- Built with lush.nvim'
--
-- Acme Theme for Neovim
-- Port of Helix's acme theme
-- Based on https://github.com/helix-editor/helix/blob/master/runtime/themes/acme.toml

local lush = require('lush')
local hsl = lush.hsl
local sym = lush.sym

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
    sym("@lsp.type.comment") { Comment },
    sym("@lsp.type.enum") { Type },
    sym("@lsp.type.interface") { Type },
    sym("@lsp.type.keyword") { Keyword },
    sym("@lsp.type.namespace") { Identifier },
    sym("@lsp.type.parameter") { Identifier },
    sym("@lsp.type.property") { Identifier },
    sym("@lsp.type.string") { String },
    sym("@lsp.type.type") { Type },
    sym("@lsp.type.variable") { Identifier },
    
    -- Treesitter
    sym("@annotation") { PreProc },
    sym("@attribute") { PreProc },
    sym("@boolean") { Boolean },
    sym("@character") { Character },
    sym("@character.special") { SpecialChar },
    sym("@comment") { Comment },
    sym("@conditional") { Conditional },
    sym("@constant") { Constant },
    sym("@constant.builtin") { Special },
    sym("@constant.macro") { Define },
    sym("@constructor") { Function },
    sym("@debug") { Debug },
    sym("@define") { Define },
    sym("@error") { Error },
    sym("@exception") { Exception },
    sym("@field") { Identifier },
    sym("@float") { Float },
    sym("@function") { Function },
    sym("@function.builtin") { Special },
    sym("@function.call") { Function },
    sym("@function.macro") { Macro },
    sym("@include") { Include },
    sym("@keyword") { Keyword },
    sym("@keyword.function") { Keyword },
    sym("@keyword.operator") { Keyword },
    sym("@keyword.return") { Keyword },
    sym("@label") { Label },
    sym("@method") { Function },
    sym("@method.call") { Function },
    sym("@namespace") { Identifier },
    sym("@none") { },
    sym("@number") { Number },
    sym("@operator") { Operator },
    sym("@parameter") { Identifier },
    sym("@parameter.reference") { Identifier },
    sym("@preproc") { PreProc },
    sym("@property") { Identifier },
    sym("@punctuation.bracket") { Delimiter },
    sym("@punctuation.delimiter") { Delimiter },
    sym("@punctuation.special") { Delimiter },
    sym("@repeat") { Repeat },
    sym("@storageclass") { StorageClass },
    sym("@string") { String },
    sym("@string.escape") { SpecialChar },
    sym("@string.regex") { String },
    sym("@string.special") { SpecialChar },
    sym("@symbol") { Identifier },
    sym("@tag") { Tag },
    sym("@tag.attribute") { Identifier },
    sym("@tag.delimiter") { Delimiter },
    sym("@text") { fg = black },
    sym("@text.danger") { ErrorMsg },
    sym("@text.emphasis") { gui = "italic" },
    sym("@text.environment") { Macro },
    sym("@text.environment.name") { Type },
    sym("@text.literal") { String },
    sym("@text.math") { Special },
    sym("@text.note") { SpecialComment },
    sym("@text.reference") { Constant },
    sym("@text.strong") { gui = "bold" },
    sym("@text.title") { Title },
    sym("@text.todo") { Todo },
    sym("@text.underline") { Underlined },
    sym("@text.uri") { Underlined },
    sym("@text.warning") { WarningMsg },
    sym("@type") { Type },
    sym("@type.builtin") { Type },
    sym("@type.definition") { Typedef },
    sym("@type.qualifier") { Type },
    sym("@variable") { Identifier },
    sym("@variable.builtin") { Special },
  }
end)

return theme