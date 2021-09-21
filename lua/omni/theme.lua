local util = require "omni.util"
local c = require "omni.colors"

local theme = {}

theme.colors = c

theme.base = {
  Comment = { fg = c.comment, style = "italic" }, -- any comment
  ColorColumn = { bg = c.black }, -- used for the columns set with 'colorcolumn'
  Conceal = { fg = c.bg_dark }, -- placeholder characters substituted for concealed text (see 'conceallevel')
  Cursor = { fg = c.bg, bg = c.bg }, -- character under the cursor
  lCursor = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
  CursorIM = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
  CursorColumn = { bg = c.bg_lighter }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
  CursorLine = { bg = c.bg_lighter }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
  Directory = { fg = c.fg }, -- directory names (and other special names in listings)
  DiffAdd = { bg = util.darken(c.git.add, 0.2) }, -- diff mode: Added line |diff.txt|
  DiffChange = { bg = util.darken(c.git.change, 0.2) }, -- diff mode: Changed line |diff.txt|
  DiffDelete = { bg = util.darken(c.git.delete, 0.2) }, -- diff mode: Deleted line |diff.txt|
  DiffText = { bg = util.darken(c.git.change, 0.2) }, -- diff mode: Changed text within a changed line |diff.txt|
  EndOfBuffer = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
  -- TermCursor  = { }, -- cursor in a focused terminal
  -- TermCursorNC= { }, -- cursor in an unfocused terminal
  ErrorMsg = { fg = c.red }, -- error messages on the command line
  VertSplit = { fg = c.pink }, -- the column separating vertically split windows
  Folded = { fg = c.cyan, bg = c.fg }, -- line used for closed folds
  FoldColumn = { bg = c.bg, fg = c.comment }, -- 'foldcolumn'
  SignColumn = { bg = c.bg, fg = c.fg }, -- column where |signs| are displayed
  SignColumnSB = { bg = c.bg_darker, fg = c.fg }, -- column where |signs| are displayed
  Substitute = { bg = c.purple, fg = c.black }, -- |:substitute| replacement text highlighting
  LineNr = { fg = c.purple }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  CursorLineNr = { fg = c.pink }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
  MatchParen = { fg = c.orange, style = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
  ModeMsg = { fg = c.fg, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
  MsgArea = { fg = c.fg }, -- Area for messages and cmdline
  -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
  MoreMsg = { fg = c.fg }, -- |more-prompt|
  NonText = { fg = c.bg_dark }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
  Normal = { fg = c.fg, bg = c.bg }, -- normal text
  NormalNC = { fg = c.fg, bg = c.bg }, -- normal text in non-current windows
  NormalSB = { fg = c.bg_darker, bg = c.bg_dark }, -- normal text in non-current windows
  NormalFloat = { fg = c.fg, bg = c.bg_dark }, -- Normal text in floating windows.
  FloatBorder = { fg = c.fg },
  Pmenu = { bg = c.bg_darker, fg = c.fg }, -- Popup menu: normal item.
  PmenuSel = { bg = c.bg_lighter }, -- Popup menu: selected item.
  PmenuSbar = { bg = c.bg_light }, -- Popup menu: scrollbar.
  PmenuThumb = { bg = c.purple }, -- Popup menu: Thumb of the scrollbar.
  Question = { fg = c.cyan }, -- |hit-enter| prompt and yes/no questions
  QuickFixLine = { bg = c.bg, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
  Search = { bg = c.bg, fg = c.cyan }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
  IncSearch = { bg = c.cyan, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
  SpecialKey = { fg = c.bg }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
  SpellBad = { sp = c.red, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
  SpellCap = { sp = c.orange, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
  SpellLocal = { sp = c.cyan, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
  SpellRare = { sp = c.cyan, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
  StatusLine = { fg = c.bg_darker, bg = c.bg }, -- status line of current window
  StatusLineNC = { fg = c.fg, bg = c.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  TabLine = { bg = c.bg, fg = c.fg }, -- tab pages line, not active tab page label
  TabLineFill = { bg = c.black }, -- tab pages line, where there are no labels
  TabLineSel = { fg = c.black, bg = c.cyan }, -- tab pages line, active tab page label
  Title = { fg = c.cyan, style = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
  Visual = { bg = c.selection }, -- Visual mode selection
  VisualNOS = { bg = c.bg }, -- Visual mode selection when vim is "Not Owning the Selection".
  WarningMsg = { fg = c.orange }, -- warning messages
  Whitespace = { fg = c.selection }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
  WildMenu = { bg = c.bg }, -- current match in 'wildmenu' completion

  -- These groups are not listed as default vim groups,
  -- but they are defacto standard group names for syntax highlighting.
  -- commented out groups should chain up to their "preferred" group by
  -- default,
  -- Uncomment and edit if you want more specific syntax highlighting.

  Constant = { fg = c.green }, -- (preferred) any constant
  String = { fg = c.yellow }, --   a string constant: "this is a string"
  Character = { fg = c.green }, --  a character constant: 'c', '\n'
  -- Number        = { }, --   a number constant: 234, 0xff
  Boolean = { fg = c.cyan }, --  a boolean constant: TRUE, false
  -- Float         = { }, --    a floating point constant: 2.3e10

  Identifier = { fg = c.pink }, -- (preferred) any variable name
  Function = { fg = c.green }, -- function name (also: methods for classes)

  Statement = { fg = c.pink }, -- (preferred) any statement
  -- Conditional   = { }, --  if, then, else, endif, switch, etc.
  -- Repeat        = { }, --   for, do, while, etc.
  -- Label         = { }, --    case, default, etc.
  Operator = { fg = c.pink }, -- "sizeof", "+", "*", etc.
  Keyword = { fg = c.pink, style = "italic" }, --  any other keyword
  -- Exception     = { }, --  try, catch, throw

  PreProc = { fg = c.fg }, -- (preferred) generic Preprocessor
  -- Include       = { }, --  preprocessor #include
  -- Define        = { }, --   preprocessor #define
  -- Macro         = { }, --    same as Define
  -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

  Type = { fg = c.purple }, -- (preferred) int, long, char, etc.
  -- StorageClass  = { }, -- static, register, volatile, etc.
  -- Structure     = { }, --  struct, union, enum, etc.
  -- Typedef       = { }, --  A typedef

  Special = { fg = c.purple }, -- (preferred) any special symbol
  -- SpecialChar   = { }, --  special character in a constant
  -- Tag           = { }, --    you can use CTRL-] on this
  -- Delimiter     = { }, --  character that needs attention
  -- SpecialComment= { }, -- special things inside a comment
  -- Debug         = { }, --    debugging statements

  Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
  Bold = { style = "bold" },
  Italic = { style = "italic" },

  -- ("Ignore", below, may be invisible...)
  -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

  Error = { fg = c.red }, -- (preferred) any erroneous construct
  Todo = { bg = c.cyan, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

  qfLineNr = { fg = c.bg_darker },
  qfFileName = { fg = c.cyan },

  htmlH1 = { fg = c.purple, style = "bold" },
  htmlH2 = { fg = c.cyan, style = "bold" },

  -- mkdHeading = { fg = c.orange, style = "bold" },
  -- mkdCode = { bg = c.terminal_black, fg = c.fg },
  mkdCodeDelimiter = { bg = c.black, fg = c.fg },
  mkdCodeStart = { fg = c.fg, style = "bold" },
  mkdCodeEnd = { fg = c.fg, style = "bold" },
  mkdLink = { fg = c.purple, style = "underline" },

  markdownHeadingDelimiter = { fg = c.cyan, style = "bold" },
  markdownCode = { fg = c.green },
  markdownCodeBlock = { fg = c.green },
  markdownH1 = { fg = c.cyan, style = "bold" },
  markdownH2 = { fg = c.cyan, style = "bold" },
  markdownLinkText = { fg = c.cyan, style = "underline" },
  markdownUrl = { fg = c.purple, style = "underline" },

  debugPC = { bg = c.bg_darker }, -- used for highlighting the current line in terminal-debug
  debugBreakpoint = { bg = c.cyan, fg = c.cyan }, -- used for breakpoint colors in terminal-debug

  -- These groups are for the native LSP client. Some other LSP clients may
  -- use these groups, or use their own. Consult your LSP client's
  -- documentation.
  LspReferenceText = { bg = c.selection }, -- used for highlighting "text" references
  LspReferenceRead = { bg = c.selection }, -- used for highlighting "read" references
  LspReferenceWrite = { bg = c.selection }, -- used for highlighting "write" references

  LspDiagnosticsDefaultError = { fg = c.red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsDefaultWarning = { fg = c.orange }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsDefaultInformation = { fg = c.cyan }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsDefaultHint = { fg = c.fg }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

  LspDiagnosticsVirtualTextError = { bg = util.darken(c.red, 0.1), fg = c.red }, -- Used for "Error" diagnostic virtual text
  LspDiagnosticsVirtualTextWarning = { bg = util.darken(c.yellow, 0.1), fg = c.yellow }, -- Used for "Warning" diagnostic virtual text
  LspDiagnosticsVirtualTextInformation = { bg = util.darken(c.cyan, 0.1), fg = c.cyan }, -- Used for "Information" diagnostic virtual text
  LspDiagnosticsVirtualTextHint = { bg = util.darken(c.purple, 0.1), fg = c.purple }, -- Used for "Hint" diagnostic virtual text

  LspDiagnosticsUnderlineError = { style = "undercurl", sp = c.red }, -- Used to underline "Error" diagnostics
  LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = c.yellow }, -- Used to underline "Warning" diagnostics
  LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = c.cyan }, -- Used to underline "Information" diagnostics
  LspDiagnosticsUnderlineHint = { style = "undercurl", sp = c.purple }, -- Used to underline "Hint" diagnostics

  LspSignatureActiveParameter = { fg = c.orange },
  LspCodeLens = { fg = c.comment },

  -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
  -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
  -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
  -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

  -- LspDiagnosticsSignError             = { }, -- Used for "Error" signs in sign column
  -- LspDiagnosticsSignWarning           = { }, -- Used for "Warning" signs in sign column
  -- LspDiagnosticsSignInformation       = { }, -- Used for "Information" signs in sign column
  -- LspDiagnosticsSignHint              = { }, -- Used for "Hint" signs in sign column

  ALEErrorSign = { fg = c.red },
  ALEWarningSign = { fg = c.orange },
}

theme.plugins = {

  -- These groups are for the neovim tree-sitter highlights.
  -- As of writing, tree-sitter support is a WIP, group names may change.
  -- By default, most of these groups link to an appropriate Vim group,
  -- TSError -> Error for example, so you do not have to define these unless
  -- you explicitly want to support Treesitter's improved syntax awareness.

  -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
  -- TSAttribute         = { };    -- (unstable) TODO: docs
  -- TSBoolean           = { };    -- For booleans.
  -- TSCharacter         = { };    -- For characters.
  -- TSComment           = { };    -- For comment blocks.
  TSNote = { fg = c.bg, bg = c.cyan },
  TSWarning = { fg = c.bg, bg = c.yellow },
  TSDanger = { fg = c.bg, bg = c.red },
  TSConstructor = { fg = c.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
  -- TSConditional       = { };    -- For keywords related to conditionnals.
  -- TSConstant          = { };    -- For constants
  -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
  -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
  -- TSError             = { };    -- For syntax/parser errors.
  -- TSException         = { };    -- For exception related keywords.
  TSField = { fg = c.fg }, -- For fields.
  -- TSFloat             = { };    -- For floats.
  -- TSFunction = { fg = c.green }, -- For function (calls and definitions).
  -- TSFuncBuiltin = {  }, -- For builtin functions: `table.insert` in Lua.
  -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
  TSInclude = { fg = c.pink }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
  TSKeyword = { fg = c.pink, style = "italic" }, -- For keywords that don't fall in previous categories.
  TSKeywordFunction = { fg = c.pink }, -- For keywords used to define a fuction.
  TSLabel = { fg = c.purple }, -- For labels: `label:` in C and `:label:` in Lua.
  -- TSMethod = { fg = c.green }, -- For method calls and definitions.
  -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
  -- TSNone              = { };    -- TODO: docs
  -- TSNumber = { fg = c.cyan }, -- For all numbers
  TSOperator = { fg = c.pink }, -- For any operator: `+`, but also `->` and `*` in C.
  TSParameter = { fg = c.orange }, -- For parameters of a function.
  -- TSParameterReference= { };    -- For references to parameters of a function.
  TSProperty = { fg = c.green }, -- Same as `TSField`.
  TSPunctDelimiter = { fg = c.pink }, -- For delimiters ie: `.`
  TSPunctBracket = { fg = c.purple }, -- For brackets and parens.
  TSPunctSpecial = { fg = c.cyan }, -- For special punctutation that does not fall in the catagories before.
  -- TSRepeat            = { };    -- For keywords related to loops.
  -- TSString            = { };    -- For strings.
  TSStringRegex = { fg = c.cyan }, -- For regexes.
  TSStringEscape = { fg = c.purple }, -- For escape characters within a string.
  -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
  -- TSType              = { };    -- For types.
  -- TSTypeBuiltin       = { };    -- For builtin types.
  -- TSVariable = {}, -- Any variable name that does not have another highlight.
  TSVariableBuiltin = { fg = c.purple }, -- Variable names that are defined by the languages, like `this` or `self`.

  -- TSTag               = { };    -- Tags like html tag names.
  -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
  -- TSText              = { };    -- For strings considered text in a markup language.
  TSTextReference = { fg = c.fg },
  -- TSEmphasis          = { };    -- For text to be represented with emphasis.
  -- TSUnderline         = { };    -- For text to be represented with an underline.
  -- TSStrike            = { };    -- For strikethrough text.
  -- TSTitle             = { };    -- Text that is part of a title.
  -- TSLiteral           = { };    -- Literal text.
  -- TSURI               = { };    -- Any URI like a link or email.

  -- Lua
  -- luaTSProperty = { fg = c.red }, -- Same as `TSField`.

  -- TODO: check if the colors are ok
  -- LspTrouble
  LspTroubleText = { fg = c.bg_dark },
  LspTroubleCount = { fg = c.purple, bg = c.fg },
  LspTroubleNormal = { fg = c.bg_darker, bg = c.bg_darker },

  -- Illuminate
  illuminatedWord = { bg = c.fg },
  illuminatedCurWord = { bg = c.fg },

  -- diff
  diffAdded = { fg = c.git.add },
  diffRemoved = { fg = c.git.delete },
  diffChanged = { fg = c.git.change },
  diffOldFile = { fg = c.yellow },
  diffNewFile = { fg = c.orange },
  diffFile = { fg = c.cyan },
  diffLine = { fg = c.comment },
  diffIndexLine = { fg = c.purple },

  -- TODO: check if the colors are ok
  -- Neogit
  NeogitBranch = { fg = c.pink },
  NeogitRemote = { fg = c.pink },
  NeogitHunkHeader = { bg = c.bg, fg = c.fg },
  NeogitHunkHeaderHighlight = { bg = c.fg, fg = c.blue },
  NeogitDiffContextHighlight = { bg = c.bg_darker, fg = c.bg_dark },
  NeogitDiffDeleteHighlight = { fg = c.git.delete, bg = c.git.delete },
  NeogitDiffAddHighlight = { fg = c.git.add, bg = c.git.add },

  -- GitGutter
  GitGutterAdd = { fg = c.git.add }, -- diff mode: Added line |diff.txt|
  GitGutterChange = { fg = c.git.change }, -- diff mode: Changed line |diff.txt|
  GitGutterDelete = { fg = c.git.delete }, -- diff mode: Deleted line |diff.txt|

  -- GitSigns
  GitSignsAdd = { fg = c.git.add }, -- diff mode: Added line |diff.txt|
  GitSignsChange = { fg = c.git.change }, -- diff mode: Changed line |diff.txt|
  GitSignsDelete = { fg = c.git.delete }, -- diff mode: Deleted line |diff.txt|

  -- Telescope
  TelescopeBorder = { fg = c.purple },

  -- NvimTree
  NvimTreeNormal = { fg = c.fg, bg = c.bg_darker },
  NvimTreeRootFolder = { fg = c.cyan, style = "bold" },
  NvimTreeGitDirty = { fg = c.git.change },
  NvimTreeGitNew = { fg = c.git.add },
  NvimTreeGitDeleted = { fg = c.git.delete },
  NvimTreeSpecialFile = { fg = c.purple, style = "underline" },
  LspDiagnosticsError = { fg = c.red },
  LspDiagnosticsWarning = { fg = c.yellow },
  LspDiagnosticsInformation = { fg = c.cyan },
  LspDiagnosticsHint = { fg = c.purple },
  NvimTreeIndentMarker = { fg = c.selection },
  NvimTreeImageFile = { fg = c.fg },
  NvimTreeSymlink = { fg = c.cyan },
  -- NvimTreeFolderName= { fg = c.fg_float },

  -- TODO: check if the colors are ok
  -- Fern
  FernBranchText = { fg = c.cyan },

  -- TODO: check if the colors are ok
  -- glyph palette
  GlyphPalette1 = { fg = c.red },
  GlyphPalette2 = { fg = c.green },
  GlyphPalette3 = { fg = c.yellow },
  GlyphPalette4 = { fg = c.cyan },
  GlyphPalette6 = { fg = c.green },
  GlyphPalette7 = { fg = c.fg },
  GlyphPalette9 = { fg = c.red },

  -- Dashboard
  DashboardShortCut = { fg = c.cyan },
  DashboardHeader = { fg = c.pink },
  DashboardCenter = { fg = c.purple },
  DashboardFooter = { fg = c.yellow, style = "italic" },

  -- WhichKey
  WhichKey = { fg = c.purple },
  WhichKeyGroup = { fg = c.pink },
  WhichKeyDesc = { fg = c.yellow },
  WhichKeySeperator = { fg = c.cyan },
  WhichKeyFloat = { bg = c.bg_darker },
  WhichKeyValue = { fg = c.fg },

  -- TODO: check if the colors are ok
  -- LspSaga
  DiagnosticError = { fg = c.red },
  DiagnosticWarning = { fg = c.yellow },
  DiagnosticInformation = { fg = c.cyan },
  DiagnosticHint = { fg = c.purple },

  LspFloatWinNormal = { bg = c.bg },
  LspFloatWinBorder = { fg = c.purple },
  LspSagaBorderTitle = { fg = c.orange },
  LspSagaHoverBorder = { fg = c.purple },
  LspSagaRenameBorder = { fg = c.green },
  LspSagaDefPreviewBorder = { fg = c.green },
  LspSagaCodeActionBorder = { fg = c.cyan },
  LspSagaFinderSelection = { fg = c.bg },
  LspSagaCodeActionTitle = { fg = c.cyan },
  LspSagaCodeActionContent = { fg = c.purple },
  LspSagaSignatureHelpBorder = { fg = c.red },
  ReferencesCount = { fg = c.purple },
  DefinitionCount = { fg = c.purple },
  DefinitionIcon = { fg = c.cyan },
  ReferencesIcon = { fg = c.cyan },
  TargetWord = { fg = c.cyan },

  -- NeoVim
  healthError = { fg = c.red },
  healthSuccess = { fg = c.green },
  healthWarning = { fg = c.yellow },

  -- BufferLine
  BufferLineIndicatorSelected = { fg = c.git.change },
  BufferLineFill = { bg = c.bg_darker },

  -- TODO: check if the colors are ok
  -- Barbar
  BufferCurrent = { bg = c.fg, fg = c.fg },
  BufferCurrentIndex = { bg = c.fg, fg = c.cyan },
  BufferCurrentMod = { bg = c.fg, fg = c.orange },
  BufferCurrentSign = { bg = c.fg, fg = c.cyan },
  BufferCurrentTarget = { bg = c.fg, fg = c.red },
  BufferVisible = { bg = c.bg, fg = c.fg },
  BufferVisibleIndex = { bg = c.bg, fg = c.cyan },
  BufferVisibleMod = { bg = c.bg, fg = c.orange },
  BufferVisibleSign = { bg = c.bg, fg = c.cyan },
  BufferVisibleTarget = { bg = c.bg, fg = c.red },
  BufferInactive = { bg = c.bg, fg = c.bg_dark },
  BufferInactiveIndex = { bg = c.bg, fg = c.bg_dark },
  BufferInactiveMod = { bg = c.bg, fg = c.red },
  BufferInactiveSign = { bg = c.bg, fg = c.fg },
  BufferInactiveTarget = { bg = c.bg, fg = c.red },
  BufferTabpages = { bg = c.bg, fg = c.none },
  BufferTabpage = { bg = c.bg, fg = c.fg },

  -- TODO: check if the colors are ok
  -- Sneak
  Sneak = { fg = c.fg, bg = c.purple },
  SneakScope = { bg = c.bg },

  -- TODO: check if the colors are ok
  -- Hop
  HopNextKey = { fg = c.purple, style = "bold" },
  HopNextKey1 = { fg = c.cyan, style = "bold" },
  HopNextKey2 = { fg = c.cyan },
  HopUnmatched = { fg = c.cyan },

  -- Headlines
  Headline1 = { bg = util.darken(c.cyan, 0.2) },
  Headline2 = { bg = util.darken(c.cyan, 0.2) },
  CodeBlock = { bg = c.bg_darker },

  LightspeedGreyWash = { fg = c.bg_dark },
}

return theme
