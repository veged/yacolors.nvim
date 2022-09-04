--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local Red = {
  hsl('#fff5f2'),
  hsl('#ffe2db'),
  hsl('#ffcdc3'),
  hsl('#ffb6ab'),
  hsl('#ff9e94'),
  hsl('#ff857c'),
  hsl('#ff6964'),
  hsl('#ff4d4d'),
  hsl('#ff3333'),
  hsl('#ff0000'),
  hsl('#f20008'),
  hsl('#e1000f'),
  hsl('#d00015'),
  hsl('#bf001a'),
  hsl('#ae001d'),
  hsl('#9d001f'),
  hsl('#8c0021'),
  hsl('#7b0021'),
  hsl('#6a0020'),
  hsl('#59001e')
}
local Orange = {
  hsl('#fffae5'),
  hsl('#fff4d0'),
  hsl('#ffedba'),
  hsl('#ffe4a4'),
  hsl('#ffd98e'),
  hsl('#ffce78'),
  hsl('#ffc062'),
  hsl('#ffb24d'),
  hsl('#ffa733'),
  hsl('#ff9100'),
  hsl('#ff8800'),
  hsl('#ed7b00'),
  hsl('#da6e00'),
  hsl('#c86200'),
  hsl('#b55600'),
  hsl('#a34b00'),
  hsl('#914000'),
  hsl('#7e3600'),
  hsl('#6c2d00'),
  hsl('#592400')
}
local Yellow = {
  hsl('#feffd9'),
  hsl('#ffffbf'),
  hsl('#fffcab'),
  hsl('#fff896'),
  hsl('#fff385'),
  hsl('#ffec70'),
  hsl('#ffe45c'),
  hsl('#ffdb4d'),
  hsl('#ffd633'),
  hsl('#ffcc00'),
  hsl('#ffc300'),
  hsl('#efb000'),
  hsl('#e09d00'),
  hsl('#d08b00'),
  hsl('#c17a00'),
  hsl('#b16a00'),
  hsl('#a25c00'),
  hsl('#924e00'),
  hsl('#824100'),
  hsl('#733600')
}
local Green = {
  hsl('#edfff2'),
  hsl('#cff7da'),
  hsl('#b2eec3'),
  hsl('#97e6af'),
  hsl('#7edd9c'),
  hsl('#66d48b'),
  hsl('#50cc7b'),
  hsl('#3bc46c'),
  hsl('#25bb5c'),
  hsl('#00b341'),
  hsl('#00a83d'),
  hsl('#009e39'),
  hsl('#009436'),
  hsl('#008a32'),
  hsl('#00802e'),
  hsl('#00752b'),
  hsl('#006b27'),
  hsl('#006123'),
  hsl('#00571f'),
  hsl('#004d1c')
}
local Mint = {
  hsl('#ebfff7'),
  hsl('#cbf4e4'),
  hsl('#ade9d4'),
  hsl('#92dfc6'),
  hsl('#78d4ba'),
  hsl('#60c9af'),
  hsl('#4abea5'),
  hsl('#36b49c'),
  hsl('#22a990'),
  hsl('#009e81'),
  hsl('#00967a'),
  hsl('#008e74'),
  hsl('#00866d'),
  hsl('#007d66'),
  hsl('#007560'),
  hsl('#006d59'),
  hsl('#006552'),
  hsl('#005d4c'),
  hsl('#005545'),
  hsl('#004d3e')
}
local Blue = {
  hsl('#edfaff'),
  hsl('#d6f1ff'),
  hsl('#bfe8ff'),
  hsl('#a8dcff'),
  hsl('#91cfff'),
  hsl('#7ac1ff'),
  hsl('#63b1ff'),
  hsl('#4da0ff'),
  hsl('#3392ff'),
  hsl('#0077ff'),
  hsl('#006fed'),
  hsl('#0066db'),
  hsl('#005ec9'),
  hsl('#0056b8'),
  hsl('#004da6'),
  hsl('#004594'),
  hsl('#003d82'),
  hsl('#003470'),
  hsl('#002c5e'),
  hsl('#00244d')
}
local DarkBlue = {
  hsl('#edf8ff'),
  hsl('#d6edff'),
  hsl('#bfe1ff'),
  hsl('#a8d4ff'),
  hsl('#92c5ff'),
  hsl('#7bb4ff'),
  hsl('#64a2ff'),
  hsl('#4d8eff'),
  hsl('#337dff'),
  hsl('#005dff'),
  hsl('#0057ee'),
  hsl('#0050dc'),
  hsl('#004acb'),
  hsl('#0044bb'),
  hsl('#0038a8'),
  hsl('#002d97'),
  hsl('#002486'),
  hsl('#001b74'),
  hsl('#001463'),
  hsl('#000e52')
}
local Purple = {
  hsl('#faf2ff'),
  hsl('#f2deff'),
  hsl('#e8caff'),
  hsl('#ddb6ff'),
  hsl('#d1a2ff'),
  hsl('#c38eff'),
  hsl('#b47aff'),
  hsl('#a466ff'),
  hsl('#944dff'),
  hsl('#8533ff'),
  hsl('#752fed'),
  hsl('#662cdb'),
  hsl('#5928c9'),
  hsl('#4c25b8'),
  hsl('#4021a6'),
  hsl('#351e94'),
  hsl('#2b1a82'),
  hsl('#221670'),
  hsl('#1a135e'),
  hsl('#130f4d')
}
local BlueGrey = {
  hsl('#f7f8fa'),
  hsl('#f1f2f5'),
  hsl('#eaecf0'),
  hsl('#e4e6eb'),
  hsl('#dee0e6'),
  hsl('#d8dbe0'),
  hsl('#d1d5db'),
  hsl('#cbcfd6'),
  hsl('#c5c9d1'),
  hsl('#bfc4cc'),
  hsl('#b0b4bd'),
  hsl('#a1a5ad'),
  hsl('#92969e'),
  hsl('#83878f'),
  hsl('#747880'),
  hsl('#666970'),
  hsl('#575a61'),
  hsl('#494c52'),
  hsl('#3b3d42'),
  hsl('#2d2f33')
}
local Grey = {
  hsl('#f9f9f7'),
  hsl('#f4f4f0'),
  hsl('#efefea'),
  hsl('#eaeae4'),
  hsl('#e5e4dd'),
  hsl('#e0dfd7'),
  hsl('#dbd9d1'),
  hsl('#d6d4cb'),
  hsl('#d1cfc5'),
  hsl('#ccc9bf'),
  hsl('#bcb9b0'),
  hsl('#ada9a0'),
  hsl('#9d9991'),
  hsl('#8e8a82'),
  hsl('#7e7a73'),
  hsl('#6e6a64'),
  hsl('#5f5b55'),
  hsl('#4f4b47'),
  hsl('#403c38'),
  hsl('#33302d')
}
-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    -- ColorColumn  { }, -- Columns set with 'colorcolumn'
    -- Conceal      { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { reverse = true }, -- Character under the cursor
    lCursor      { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorLine   { bg = BlueGrey[3] }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    Directory    { fg = DarkBlue[10] }, -- Directory names (and other special names in listings)
    -- DiffAdd      { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg     { bg = Red[8], fg = Red[1] }, -- Error messages on the command line
    -- VertSplit    { }, -- Column separating vertically split windows
    -- Folded       { }, -- Line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- Column where |signs| are displayed
    IncSearch    { bg = Yellow[10] }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { bg = Yellow[5] }, -- |:substitute| replacement text highlighting
    LineNr       { fg = BlueGrey[13] }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { LineNr, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { reverse = true }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { bg = Mint[2], fg = Mint[17] }, -- |more-prompt|
    NonText      { fg = Blue[6] }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- rma
    Normal       { bg = BlueGrey[1], fg = BlueGrey[20] }, -- Normal text
    NormalFloat  { bg = BlueGrey[17], fg = Normal.bg }, -- Normal text in floating windows.
    NormalNC     { Normal }, -- normal text in non-current windows
    Pmenu        { NormalFloat }, -- Popup menu: Normal item.
    PmenuSel     { Normal }, -- Popup menu: Selected item.
    PmenuSbar    { Pmenu }, -- Popup menu: Scrollbar.
    PmenuThumb   { Normal  }, -- Popup menu: Thumb of the scrollbar.
    Question     { MoreMsg }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { Substitute }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { Substitute }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey   { NonText }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   { bg = BlueGrey[16], fg = BlueGrey[5] }, -- Status line of current window
    StatusLineNC { StatusLine, reverse = true }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { underline = true }, -- Tab pages line, not active tab page label
    TabLineFill  { StatusLineNC }, -- Tab pages line, where there are no labels
    TabLineSel   { StatusLine }, -- Tab pages line, active tab page label
    Title        { italic = true }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual       { reverse = true }, -- Visual mode selection
    VisualNOS    { Visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { ErrorMsg }, -- Warning messages
    Whitespace   { fg = BlueGrey[8] }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = BlueGrey[15] }, -- Any comment

    Constant       { fg = Mint[8] }, -- (*) Any constant
    String         { fg = Green[10] }, --   A string constant: "this is a string"
    Character      { String, bold = true }, --   A character constant: 'c', '\n'
    Number         { fg = Red[15] }, --   A number constant: 234, 0xff
    Float          { Number }, --   A floating point constant: 2.3e10
    Boolean        { fg = Purple[10] }, --   A boolean constant: TRUE, false

    Identifier     { Normal }, -- (*) Any variable name
    Function       { Identifier }, --   Function name (also: methods for classes)

    Statement      { fg = DarkBlue[10], bold = true, italic = true }, -- (*) Any statement
    Conditional    { Statement, fg = Purple[8] }, --   if, then, else, endif, switch, etc.
    Repeat         { Statement, fg = Number.fg }, --   for, do, while, etc.
    Label          { Statement }, --   case, default, etc.
    Operator       { fg = Normal.fg, bold = false }, --   "sizeof", "+", "*", etc.
    Keyword        { Statement }, --   any other keyword
    Exception      { Statement, fg = Red[10] }, --   try, catch, throw

    PreProc        { Comment }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { Statement, fg = Constant.fg  }, -- (*) int, long, char, etc.
    StorageClass   { Conditional }, --   static, register, volatile, etc.
    Structure      { Type, fg = Character.fg }, --   struct, union, enum, etc.
    Typedef        { Type }, --   A typedef

    Special        { fg = Conditional.fg }, -- (*) Any special symbol
    SpecialChar    { Special, bold = true }, --   Special character in a constant
    Tag            { Special }, --   You can use CTRL-] on this
    Delimiter      { Special }, --   Character that needs attention
    SpecialComment { Comment, bold = true }, --   Special things inside a comment (e.g. '\n')
    Debug          { fg = Exception.fg, italic = true }, --   Debugging statements

    Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { bg = Red[4] }, -- Any erroneous construct
    Todo           { bg = Yellow[2] }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = Red[10] } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = Orange[10] } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = Mint[8] } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { Comment } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    TSAttribute          { Comment } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    TSBoolean            { Boolean } , -- Boolean literals: `True` and `False` in Python.
    TSCharacter          { Character } , -- Character literals: `'a'` in C.
    TSCharacterSpecial   { Special } , -- Special characters.
    TSComment            { Comment } , -- Line comments and block comments.
    TSConditional        { Conditional } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConstant           { Constant } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstBuiltin       { Constant, bold = true } , -- Built-in constant values: `nil` in Lua.
    TSConstMacro         { TSConstBuiltin, italic = true } , -- Constants defined by macros: `NULL` in C.
    TSConstructor        { fg = Green[15] } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    TSDebug              { Exception } , -- Debugging statements.
    TSDefine             { Constant } , -- Preprocessor #define state LineNr, bold = truements.
    TSError              { bg = Red[2] } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    TSException          { Exception } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField              { Identifier } , -- Object and struct fields.
    -- TSProperty           { } , -- Same as `TSField`.
    TSFloat              { Number } , -- Floating-point number literals.
    TSFunction           { Function } , -- Function calls and definitions.
    TSFuncBuiltin        { Function, bold = true } , -- Built-in functions: `print` in Lua.
    TSFuncMacro          { Keyword } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            { Keyword } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword            { Keyword } , -- Keywords that don't fit into other categories.
    TSKeywordFunction    { Keyword, fg = Purple[12] } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordOperator    { Keyword } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    TSKeywordReturn      { Keyword, fg = DarkBlue[10] } , -- Keywords like `return` and `yield`.
    TSLabel              { Label } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSMethod             { Function } , -- Method calls and definitions.
    TSNamespace          { Identifier } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    TSNumber             { Number } , -- Numeric literals that don't fit into other categories.
    TSOperator           { Operator } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter          { Identifier } , -- Parameters of a function.
    TSParameterReference { TSParameter, italic = true } , -- References to parameters of a function.
    TSPreProc            { Constant } , -- Preprocessor #if, #else, #endif, etc.
    TSPunctDelimiter     { fg = BlueGrey[18] } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket       { TSPunctDelimiter } , -- Brackets, braces, parentheses, etc.
    TSPunctSpecial       { TSPunctDelimiter } , -- Special punctuation that doesn't fit into the previous categories.
    TSRepeat             { Repeat } , -- Keywords related to loops: `for`, `while`, etc.
    TSStorageClass       { Conditional } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    TSString             { String } , -- String literals.
    TSStringRegex        { String, italic = true } , -- Regular expression literals.
    TSStringEscape       { Character } , -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringSpecial      { Constant } , -- Strings with special meaning that don't fit into the previous categories.
    TSSymbol             { Identifier } , -- Identifiers referring to symbols or atoms.
    TSTag                { Identifier, italic = true } , -- Tags like HTML tag names.
    TSTagAttribute       { Identifier } , -- HTML tag attributes.
    TSTagDelimiter       { TSPunctDelimiter } , -- Tag delimiters like `<` `>` `/`.
    TSText               { Normal } , -- Non-structured text. Like text in a markup language.
    TSStrong             { TSText, bold = true } , -- Text to be represented in bold.
    TSEmphasis           { TSText, italic = true } , -- Text to be represented with emphasis.
    TSUnderline          { TSText, underline = true } , -- Text to be represented with an underline.
    TSStrike             { TSText, strikethrough = true } , -- Strikethrough text.
    TSTitle              { TSText, bold = true } , -- Text that is part of a title.
    TSLiteral            { Identifier } , -- Literal or verbatim text.
    TSURI                { String } , -- URIs like hyperlinks or email addresses.
    TSMath               { TSStringRegex } , -- Math environments like LaTeX's `$ ... $`
    TSTextReference      { TSText, italic = true } , -- Footnotes, text references, citations, etc.
    TSEnvironment        { TSStrong } , -- Text environments of markup languages.
    TSEnvironmentName    { TSEnvironment, italic = true } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSNote               { Comment } , -- Text representation of an informational note.
    TSWarning            { DiagnosticWarn } , -- Text representation of a warning note.
    TSDanger             { DiagnosticError } , -- Text representation of a danger note.
    TSType               { Type } , -- Type (and class) definitions and annotations.
    TSTypeBuiltin        { Type, bold = true } , -- Built-in types: `i32` in Rust.
    TSVariable           { Identifier } , -- Variable names that don't fit into other categories.
    TSVariableBuiltin    { fg = Keyword.fg, bold = true } , -- Variable names defined by the language: `this` or `self` in Javascript.
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
