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
local P = require('palette')
local Red = P.Red
local Orange = P.Orange
local Yellow = P.Yellow
local Green = P.Green
local Mint = P.Mint
local Blue = P.Blue
local DarkBlue = P.DarkBlue
local Purple = P.Purple
local BlueGrey = P.BlueGrey
local Grey = P.Grey

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
    Normal       { bg = BlueGrey[1], fg = BlueGrey[20] }, -- Normal text
    NormalNC     { Normal }, -- normal text in non-current windows

    Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { bg = Red[4] }, -- Any erroneous construct
    Todo           { bg = Yellow[2] }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    NormalFloat  { bg = BlueGrey[17], fg = Normal.bg }, -- Normal text in floating windows.
    Cursor       { reverse = true }, -- Character under the cursor
    lCursor      { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorLine   { bg = BlueGrey[3] }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    ColorColumn  { CursorLine }, -- Columns set with 'colorcolumn'
    Conceal      { bg = BlueGrey[17], fg = Normal.fg }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Directory    { fg = DarkBlue[10] }, -- Directory names (and other special names in listings)
    DiffAdd      { bg = Green[4], fg = Green[16] }, -- Diff mode: Added line |diff.txt|
    DiffChange   { bg = Orange[4], fg = Orange[16] }, -- Diff mode: Changed line |diff.txt|
    DiffDelete   { bg = Red[4], fg = Red[16] }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { bg = Orange[4], fg = Orange[16] }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor   { Cursor }, -- Cursor in a focused terminal
    TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg     { bg = Red[8], fg = Red[1] }, -- Error messages on the command line
    VertSplit    { NormalFloat }, -- Column separating vertically split windows
    Folded       { bg = BlueGrey[7] }, -- Line used for closed folds
    FoldColumn   { Folded }, -- 'foldcolumn'
    SignColumn   { CursorLine }, -- Column where |signs| are displayed
    IncSearch    { bg = Yellow[10] }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { bg = Yellow[5] }, -- |:substitute| replacement text highlighting
    LineNr       { fg = BlueGrey[13] }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { LineNr, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = Yellow[2] }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { CursorLine }, -- Area for messages and cmdline
    MsgSeparator { NormalFloat }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { bg = Mint[2], fg = Mint[17] }, -- |more-prompt|
    NonText      { fg = Blue[6] }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Pmenu        { NormalFloat }, -- Popup menu: Normal item.
    PmenuSel     { CursorLine, bold = true }, -- Popup menu: Selected item.
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
    ExtraWhitespace { Error }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = BlueGrey[14] }, -- Any comment

    Constant       { fg = Green[10] }, -- (*) Any constant
    String         { fg = Mint[8] }, --   A string constant: "this is a string"
    Character      { String, bold = true }, --   A character constant: 'c', '\n'
    Number         { fg = Orange[12] }, --   A number constant: 234, 0xff
    Float          { Number }, --   A floating point constant: 2.3e10
    Boolean        { fg = Blue[9] }, --   A boolean constant: TRUE, false

    Identifier     { fg = Normal.fg }, -- (*) Any variable name
    Function       { Identifier }, --   Function name (also: methods for classes)

    Statement      { fg = DarkBlue[11], bold = true, italic = true }, -- (*) Any statement
    Conditional    { Statement, fg = Boolean.fg }, --   if, then, else, endif, switch, etc.
    Repeat         { Statement, fg = Number.fg }, --   for, do, while, etc.
    Label          { Conditional }, --   case, default, etc.
    Operator       { fg = BlueGrey[14] }, --   "sizeof", "+", "*", etc.
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
    TSOperator           { Operator } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSAttribute          { Comment } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    TSBoolean            { Boolean } , -- Boolean literals: `True` and `False` in Python.
    TSCharacter          { Character } , -- Character literals: `'a'` in C.
    TSCharacterSpecial   { Special } , -- Special characters.
    TSComment            { Comment } , -- Line comments and block comments.
    TSConditional        { Conditional } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSPunctConditional   { fg = Blue[6], italic = true } , -- Brackets in conditionals
    TSConstant           { Constant } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstBuiltin       { Constant, bold = true } , -- Built-in constant values: `nil` in Lua.
    TSConstMacro         { TSConstBuiltin, italic = true } , -- Constants defined by macros: `NULL` in C.
    TSConstructor        { fg = Green[15] } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    TSDebug              { Exception } , -- Debugging statements.
    TSDefine             { Constant } , -- Preprocessor #define state LineNr, bold = truements.
    TSError              { Error } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    TSException          { Exception } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField              { Identifier } , -- Object and struct fields.
    TSProperty           { } , -- Same as `TSField`.
    TSFloat              { Number } , -- Floating-point number literals.
    TSFunction           { Function } , -- Function calls and definitions.
    TSFuncBuiltin        { Function, bold = true } , -- Built-in functions: `print` in Lua.
    TSFuncMacro          { Keyword } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSKeyword            { Keyword } , -- Keywords that don't fit into other categories.
    TSKeywordOperator    { Keyword } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    TSRepeat             { Repeat } , -- Keywords related to loops: `for`, `while`, etc.
    TSPunctRepeat        { fg = Orange[9], italic = true } , -- Brackets in loops: `for`, `while`, etc.
    TSKeywordDeclaration { Keyword, fg = Constant.fg } , -- Keywords used to define a variable/constant: `var`, `let` and `const` in JavaScript
    TSKeywordFunction    { TSKeywordDeclaration } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSPunctArrowFunction { TSKeywordFunction } , -- `=>` in arrow functions
    TSPunctFunction      { fg = Green[7], italic = true } , -- Punctuation in function declarations
    TSInclude            { TSKeywordDeclaration } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeywordSwitch      { TSConditional } , -- Keyword `switch`
    TSKeywordReturn      { Keyword, fg = Purple[10] } , -- Keywords like `return` and `yield`.
    TSKeywordBreak       { TSKeywordReturn } , -- Keyword `break`.
    TSKeywordContinue    { TSKeywordReturn } , -- Keyword `continue`.
    TSKeywordWith        { TSKeywordDeclaration } , -- Keyword `with`.
    TSPunctWith          { TSPunctFunction } , -- Brackets in `with`.
    TSLabel              { Label } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSMethod             { Function } , -- Method calls and definitions.
    TSNamespace          { Identifier } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    TSNumber             { Number } , -- Numeric literals that don't fit into other categories.
    TSParameter          { Identifier } , -- Parameters of a function.
    TSParameterReference { TSParameter, italic = true } , -- References to parameters of a function.
    TSPreProc            { Constant } , -- Preprocessor #if, #else, #endif, etc.
    TSPunctDelimiter     { fg = BlueGrey[14] } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket       { TSPunctDelimiter } , -- Brackets, braces, parentheses, etc.
    TSPunctSpecial       { TSPunctDelimiter } , -- Special punctuation that doesn't fit into the previous categories.
    TSPunctArray         { fg = TSPunctRepeat.fg } , -- Brackets and commas in array literals
    TSPunctObject        { fg = TSPunctConditional.fg } , -- Brackets and commas in object literals
    TSStorageClass       { Conditional } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    TSString             { String } , -- String literals.
    TSStringRegex        { String, italic = true } , -- Regular expression literals.
    TSStringEscape       { Character } , -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringSpecial      { TSStringEscape } , -- Strings with special meaning that don't fit into the previous categories.
    TSStringSubst        { fg = Green[5], bold = true } , -- Template substitution brackets in template string literals
    TSPunctString        { fg = Green[7] } , -- Quotes in string literals
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
    TSTypeDefinition     { Type } , -- Type (and class) definitions.
    TSTypeBuiltin        { Type, bold = true } , -- Built-in types: `i32` in Rust.
    TSVariable           { Identifier } , -- Variable names that don't fit into other categories.
    TSVariableBuiltin    { bold = true } , -- Variable names defined by the language: `this` or `self` in Javascript.

    CmpCursorLine          { bg = NormalFloat.fg, fg = NormalFloat.bg } , -- Highlight group for unmatched characters of each completion field.
    CmpItemAbbr            {} , -- Highlight group for unmatched characters of each completion field.
    CmpItemAbbrDeprecated  { strikethrough = true } , -- Highlight group for unmatched characters of each deprecated completion field.
    CmpItemAbbrMatch       { bold = true } , -- Highlight group for matched characters of each completion field. Matched characters must form a substring of a field which share a starting position.
    CmpItemAbbrMatchFuzzy  { CmpItemAbbrMatch } , -- Highlight group for fuzzy-matched characters of each completion field.
    CmpItemKind            { NormalFloat, italic = true } , -- Highlight group for the kind of the field. NOTE: `kind` is a symbol after each completion option.
    CmpItemKindConstant    { TSConstant, italic = true } ,
    CmpItemKindConstructor { TSConstructor, italic = true },
    CmpItemKindFunction    { fg = TSKeywordFunction.fg, italic = true },
    CmpItemKindClass       { fg = TSType.fg, italic = true },
    CmpItemKindKeyword     { fg = TSKeyword.fg, italic = true },
    CmpItemKindField       { italic = true },
    CmpItemKindProperty    { TSProperty, italic = true },
    CmpItemKindMethod      { TSMethod, italic = true },
    CmpItemKindOperator    { TSOperator, italic = true },
    CmpItemKindText        { CmpItemKind, italic = true },
    CmpItemKindVariable    { fg = TSKeywordVarLetConst.fg, italic = true },
    CmpItemKindEnum        { CmpItemKindVariable, italic = true },
    CmpItemKindEnumMember  { CmpItemKindVariable, italic = true },
    CmpItemKindSnippet     { fg = TSKeywordReturn.fg, italic = true }
    -- CmpItemMenu            { NormalFloat } , -- The menu field's highlight group.
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
