-- Oscura highlight group definitions

local M = {}

function M.setup(c)
  local hl = {}

  -- -----------------------------------------------------------------------
  -- Editor UI
  -- -----------------------------------------------------------------------
  hl.Normal          = { fg = c.fg,       bg = c.bg }
  hl.NormalFloat     = { fg = c.fg,       bg = c.bg_float }
  hl.NormalNC        = { fg = c.fg,       bg = c.bg }
  hl.FloatBorder     = { fg = c.bracket3, bg = c.bg_float }
  hl.FloatTitle      = { fg = c.accent,   bg = c.bg_float }

  hl.Cursor          = { fg = c.bg,       bg = c.fg }
  hl.CursorLine      = { bg = c.cursor_line }
  hl.CursorLineNr    = { fg = c.fg,       bold = true }
  hl.LineNr          = { fg = c.line_nr }
  hl.SignColumn      = { fg = c.line_nr,  bg = c.bg }
  hl.ColorColumn     = { bg = c.cursor_line }

  hl.Visual          = { bg = c.visual }
  hl.VisualNOS       = { bg = c.visual }
  hl.Search          = { bg = c.search, fg = c.fg }
  hl.IncSearch       = { bg = c.accent,    fg = c.bg, bold = true }
  hl.CurSearch       = { bg = c.accent,    fg = c.bg, bold = true }
  hl.Substitute      = { bg = c.error,     fg = c.bg }

  hl.StatusLine      = { fg = c.lang_method, bg = c.bg }
  hl.StatusLineNC    = { fg = c.line_nr,     bg = c.bg }
  hl.WinBar          = { fg = c.fg_subtle,   bg = c.bg }
  hl.WinBarNC        = { fg = c.line_nr,     bg = c.bg }
  hl.WinSeparator    = { fg = c.bracket,     bg = c.bg }
  hl.VertSplit       = { fg = c.bracket,     bg = c.bg }

  hl.TabLine         = { fg = c.lang_method, bg = c.bg }
  hl.TabLineSel      = { fg = c.fg,          bg = c.bg, bold = true }
  hl.TabLineFill     = { bg = c.bg }

  hl.Pmenu           = { fg = c.fg_muted,    bg = c.bg_popup }
  hl.PmenuSel        = { fg = c.fg,          bg = c.pmenu_sel, bold = true }
  hl.PmenuSbar       = { bg = c.bg_popup }
  hl.PmenuThumb      = { bg = c.bracket }
  hl.PmenuKind       = { fg = c.teal,        bg = c.bg_popup }
  hl.PmenuKindSel    = { fg = c.teal,        bg = c.pmenu_sel }
  hl.PmenuExtra      = { fg = c.lang_method, bg = c.bg_popup }
  hl.PmenuExtraSel   = { fg = c.lang_method, bg = c.pmenu_sel }

  hl.Folded          = { fg = c.lang_method, bg = c.bg_float }
  hl.FoldColumn      = { fg = c.bracket,     bg = c.bg }
  hl.Conceal         = { fg = c.bracket }

  hl.MatchParen      = { fg = c.accent, bold = true, underline = true }

  hl.NonText         = { fg = c.line_nr }
  hl.SpecialKey      = { fg = c.bracket }
  hl.Whitespace      = { fg = c.line_nr }
  hl.EndOfBuffer     = { fg = c.line_nr }

  hl.Directory       = { fg = c.accent }
  hl.Title           = { fg = c.accent, bold = true }
  hl.Question        = { fg = c.teal }
  hl.MoreMsg         = { fg = c.teal }
  hl.MsgArea         = { fg = c.fg }
  hl.ModeMsg         = { fg = c.accent, bold = true }
  hl.ErrorMsg        = { fg = c.error }
  hl.WarningMsg      = { fg = c.warning }

  hl.SpellBad        = { undercurl = true, sp = c.error }
  hl.SpellCap        = { undercurl = true, sp = c.warning }
  hl.SpellRare       = { undercurl = true, sp = c.teal }
  hl.SpellLocal      = { undercurl = true, sp = c.link }

  -- -----------------------------------------------------------------------
  -- Diff
  -- -----------------------------------------------------------------------
  hl.DiffAdd         = { bg = c.diff_add_bg }
  hl.DiffDelete      = { bg = c.diff_del_bg }
  hl.DiffChange      = { bg = c.diff_chg_bg }
  hl.DiffText        = { bg = c.diff_txt_bg, bold = true }

  hl.Added           = { fg = c.added }
  hl.Removed         = { fg = c.deleted }
  hl.Changed         = { fg = c.modified }

  -- -----------------------------------------------------------------------
  -- Syntax — base groups
  -- -----------------------------------------------------------------------
  hl.Comment         = { fg = c.comment, italic = true }

  hl.Constant        = { fg = c.constant }
  hl.String          = { fg = c.string }
  hl.Character       = { fg = c.constant }
  hl.Number          = { fg = c.constant }
  hl.Float           = { fg = c.constant }
  hl.Boolean         = { fg = c.constant }

  hl.Identifier      = { fg = c.fg }
  hl.Function        = { fg = c.func }

  hl.Statement       = { fg = c.keyword }
  hl.Conditional     = { fg = c.keyword }
  hl.Repeat          = { fg = c.keyword }
  hl.Label           = { fg = c.keyword }
  hl.Operator        = { fg = c.keyword }
  hl.Keyword         = { fg = c.keyword }
  hl.Exception       = { fg = c.keyword }

  hl.PreProc         = { fg = c.keyword }
  hl.Include         = { fg = c.keyword }
  hl.Define          = { fg = c.keyword }
  hl.Macro           = { fg = c.keyword }
  hl.PreCondit       = { fg = c.keyword }

  hl.Type            = { fg = c.func }
  hl.StorageClass    = { fg = c.keyword }
  hl.Structure       = { fg = c.func }
  hl.Typedef         = { fg = c.func }

  hl.Special         = { fg = c.constant }
  hl.SpecialChar     = { fg = c.regex }
  hl.Tag             = { fg = c.func }
  hl.Delimiter       = { fg = c.bracket }
  hl.SpecialComment  = { fg = c.comment, italic = true }
  hl.Debug           = { fg = c.error }

  hl.Underlined      = { underline = true }
  hl.Ignore          = { fg = c.line_nr }
  hl.Error           = { fg = c.error }
  hl.Todo            = { fg = c.bg, bg = c.accent, bold = true }

  -- -----------------------------------------------------------------------
  -- Treesitter — @capture groups (nvim 0.8+)
  -- -----------------------------------------------------------------------
  -- Comments
  hl["@comment"]                   = { link = "Comment" }
  hl["@comment.documentation"]     = { fg = c.lang_method, italic = true }

  -- Literals
  hl["@string"]                    = { fg = c.string }
  hl["@string.escape"]             = { fg = c.regex }
  hl["@string.special"]            = { fg = c.regex }
  hl["@string.regex"]              = { fg = c.regex }
  hl["@string.special.url"]        = { fg = c.link, underline = true }
  hl["@character"]                 = { fg = c.constant }
  hl["@number"]                    = { fg = c.constant }
  hl["@float"]                     = { fg = c.constant }
  hl["@boolean"]                   = { fg = c.constant }

  -- Identifiers
  hl["@variable"]                  = { fg = c.fg }
  hl["@variable.builtin"]          = { fg = c.lang_method }
  hl["@variable.parameter"]        = { fg = c.lang_method, italic = true }
  hl["@variable.member"]           = { fg = c.fg }

  -- Functions
  hl["@function"]                  = { fg = c.func }
  hl["@function.builtin"]          = { fg = c.func, bold = true }
  hl["@function.call"]             = { fg = c.func }
  hl["@function.method"]           = { fg = c.fg }
  hl["@function.method.call"]      = { fg = c.fg }
  hl["@constructor"]               = { fg = c.func }

  -- Keywords
  hl["@keyword"]                   = { fg = c.keyword }
  hl["@keyword.function"]          = { fg = c.keyword }
  hl["@keyword.operator"]          = { fg = c.keyword }
  hl["@keyword.return"]            = { fg = c.keyword }
  hl["@keyword.import"]            = { fg = c.keyword }
  hl["@keyword.modifier"]          = { fg = c.keyword }
  hl["@keyword.type"]              = { fg = c.keyword }
  hl["@keyword.coroutine"]         = { fg = c.keyword }
  hl["@keyword.conditional"]       = { fg = c.keyword }
  hl["@keyword.repeat"]            = { fg = c.keyword }
  hl["@keyword.exception"]         = { fg = c.keyword }
  hl["@keyword.debug"]             = { fg = c.error }
  hl["@keyword.directive"]         = { fg = c.constant }
  hl["@keyword.directive.define"]  = { fg = c.constant }

  -- Types
  hl["@type"]                      = { fg = c.func }
  hl["@type.builtin"]              = { fg = c.func, bold = true }
  hl["@type.definition"]           = { fg = c.func }
  hl["@type.qualifier"]            = { fg = c.keyword }

  -- Namespaces / modules
  hl["@module"]                    = { fg = c.fg }
  hl["@module.builtin"]            = { fg = c.lang_method }
  hl["@label"]                     = { fg = c.keyword }

  -- Punctuation
  hl["@punctuation.delimiter"]     = { fg = c.bracket }
  hl["@punctuation.bracket"]       = { fg = c.bracket }
  hl["@punctuation.special"]       = { fg = c.bracket2 }

  -- Markup (markdown / rst / etc.)
  hl["@markup.heading"]            = { fg = c.func, bold = true }
  hl["@markup.heading.1"]          = { fg = c.func, bold = true }
  hl["@markup.heading.2"]          = { fg = c.func, bold = true }
  hl["@markup.heading.3"]          = { fg = c.func, bold = true }
  hl["@markup.italic"]             = { fg = c.fg, italic = true }
  hl["@markup.bold"]               = { fg = c.fg, bold = true }
  hl["@markup.underline"]          = { fg = c.func, underline = true }
  hl["@markup.strikethrough"]      = { fg = c.fg_subtle, strikethrough = true }
  hl["@markup.quote"]              = { fg = c.fg }
  hl["@markup.raw"]                = { fg = c.lang_method }
  hl["@markup.raw.block"]          = { fg = c.lang_method }
  hl["@markup.link"]               = { fg = c.fg }
  hl["@markup.link.label"]         = { fg = c.func }
  hl["@markup.link.url"]           = { fg = c.link, underline = true }
  hl["@markup.list"]               = { fg = c.fg }
  hl["@markup.list.checked"]       = { fg = c.teal }
  hl["@markup.list.unchecked"]     = { fg = c.lang_method }

  -- Tags (HTML/XML/JSX)
  hl["@tag"]                       = { fg = c.func }
  hl["@tag.builtin"]               = { fg = c.func }
  hl["@tag.attribute"]             = { fg = c.func }
  hl["@tag.delimiter"]             = { fg = c.keyword }

  -- Diff
  hl["@diff.plus"]                 = { fg = c.added }
  hl["@diff.minus"]                = { fg = c.deleted }
  hl["@diff.delta"]                = { fg = c.modified }

  -- -----------------------------------------------------------------------
  -- LSP semantic tokens
  -- -----------------------------------------------------------------------
  hl["@lsp.type.class"]            = { fg = c.func }
  hl["@lsp.type.comment"]          = { link = "Comment" }
  hl["@lsp.type.decorator"]        = { fg = c.fg }
  hl["@lsp.type.enum"]             = { fg = c.func }
  hl["@lsp.type.enumMember"]       = { fg = c.constant }
  hl["@lsp.type.function"]         = { fg = c.func }
  hl["@lsp.type.interface"]        = { fg = c.func }
  hl["@lsp.type.keyword"]          = { fg = c.keyword }
  hl["@lsp.type.macro"]            = { fg = c.constant }
  hl["@lsp.type.method"]           = { fg = c.fg }
  hl["@lsp.type.modifier"]         = { fg = c.keyword }
  hl["@lsp.type.namespace"]        = { fg = c.fg }
  hl["@lsp.type.number"]           = { fg = c.constant }
  hl["@lsp.type.operator"]         = { fg = c.keyword }
  hl["@lsp.type.parameter"]        = { fg = c.lang_method, italic = true }
  hl["@lsp.type.property"]         = { fg = c.fg }
  hl["@lsp.type.regexp"]           = { fg = c.regex }
  hl["@lsp.type.string"]           = { fg = c.string }
  hl["@lsp.type.struct"]           = { fg = c.func }
  hl["@lsp.type.type"]             = { fg = c.func }
  hl["@lsp.type.typeParameter"]    = { fg = c.func }
  hl["@lsp.type.variable"]         = { fg = c.fg }
  hl["@lsp.mod.deprecated"]        = { strikethrough = true }
  hl["@lsp.mod.readonly"]          = { fg = c.constant }
  hl["@lsp.mod.static"]            = { bold = true }
  hl["@lsp.mod.defaultLibrary"]    = { bold = true }

  -- -----------------------------------------------------------------------
  -- LSP diagnostic highlights
  -- -----------------------------------------------------------------------
  hl.DiagnosticError               = { fg = c.error }
  hl.DiagnosticWarn                = { fg = c.warning }
  hl.DiagnosticInfo                = { fg = c.link }
  hl.DiagnosticHint                = { fg = c.teal }
  hl.DiagnosticOk                  = { fg = c.added }

  hl.DiagnosticUnderlineError      = { undercurl = true, sp = c.error }
  hl.DiagnosticUnderlineWarn       = { undercurl = true, sp = c.warning }
  hl.DiagnosticUnderlineInfo       = { undercurl = true, sp = c.link }
  hl.DiagnosticUnderlineHint       = { undercurl = true, sp = c.teal }

  hl.DiagnosticVirtualTextError    = { fg = c.error,   bg = c.diff_del_bg }
  hl.DiagnosticVirtualTextWarn     = { fg = c.warning, bg = c.vtext_warn }
  hl.DiagnosticVirtualTextInfo     = { fg = c.link,    bg = c.bg_float }
  hl.DiagnosticVirtualTextHint     = { fg = c.teal,    bg = c.bg_float }

  hl.DiagnosticSignError           = { fg = c.error }
  hl.DiagnosticSignWarn            = { fg = c.warning }
  hl.DiagnosticSignInfo            = { fg = c.link }
  hl.DiagnosticSignHint            = { fg = c.teal }

  -- -----------------------------------------------------------------------
  -- Git signs (gutter indicators)
  -- -----------------------------------------------------------------------
  hl.GitSignsAdd                   = { fg = c.fg }
  hl.GitSignsChange                = { fg = c.modified }
  hl.GitSignsDelete                = { fg = c.deleted }
  hl.GitSignsAddNr                 = { fg = c.fg }
  hl.GitSignsChangeNr              = { fg = c.modified }
  hl.GitSignsDeleteNr              = { fg = c.deleted }

  -- -----------------------------------------------------------------------
  -- Telescope
  -- -----------------------------------------------------------------------
  hl.TelescopeNormal               = { fg = c.fg,        bg = c.bg_popup }
  hl.TelescopeBorder               = { fg = c.bracket,   bg = c.bg_popup }
  hl.TelescopePromptNormal         = { fg = c.fg,        bg = c.bg_popup }
  hl.TelescopePromptBorder         = { fg = c.bracket,   bg = c.bg_popup }
  hl.TelescopePromptTitle          = { fg = c.bg,        bg = c.accent, bold = true }
  hl.TelescopeResultsTitle         = { fg = c.bg,        bg = c.teal, bold = true }
  hl.TelescopePreviewTitle         = { fg = c.bg,        bg = c.lang_method, bold = true }
  hl.TelescopeSelection            = { bg = c.bg_sel }
  hl.TelescopeSelectionCaret       = { fg = c.accent }
  hl.TelescopeMatching             = { fg = c.accent,    bold = true }

  -- -----------------------------------------------------------------------
  -- nvim-cmp
  -- -----------------------------------------------------------------------
  hl.CmpItemAbbr                   = { fg = c.fg }
  hl.CmpItemAbbrDeprecated         = { fg = c.lang_method, strikethrough = true }
  hl.CmpItemAbbrMatch              = { fg = c.accent, bold = true }
  hl.CmpItemAbbrMatchFuzzy         = { fg = c.accent }
  hl.CmpItemKind                   = { fg = c.teal }
  hl.CmpItemMenu                   = { fg = c.lang_method }

  -- -----------------------------------------------------------------------
  -- Which-key
  -- -----------------------------------------------------------------------
  hl.WhichKey                      = { fg = c.accent }
  hl.WhichKeyGroup                 = { fg = c.teal }
  hl.WhichKeyDesc                  = { fg = c.fg }
  hl.WhichKeySeparator             = { fg = c.bracket }
  hl.WhichKeyFloat                 = { bg = c.bg_popup }

  -- -----------------------------------------------------------------------
  -- nvim-tree / neo-tree
  -- -----------------------------------------------------------------------
  hl.NvimTreeNormal                = { fg = c.fg_muted, bg = c.bg }
  hl.NvimTreeFolderIcon            = { fg = c.teal }
  hl.NvimTreeFolderName            = { fg = c.fg }
  hl.NvimTreeOpenedFolderName      = { fg = c.accent }
  hl.NvimTreeRootFolder            = { fg = c.lang_method, bold = true }
  hl.NvimTreeGitDirty              = { fg = c.fg }
  hl.NvimTreeGitDeleted            = { fg = c.error }
  hl.NvimTreeGitNew                = { fg = c.fg }
  hl.NvimTreeGitConflict           = { fg = c.error }

  -- -----------------------------------------------------------------------
  -- indent-blankline
  -- -----------------------------------------------------------------------
  hl.IblIndent                     = { fg = c.ibl_indent }
  hl.IblScope                      = { fg = c.bracket }

  -- -----------------------------------------------------------------------
  -- Mini.nvim
  -- -----------------------------------------------------------------------
  hl.MiniIndentscopeSymbol         = { fg = c.bracket }
  hl.MiniStatuslineFilename        = { fg = c.fg_muted, bg = c.bg }
  hl.MiniStatuslineDevinfo         = { fg = c.lang_method, bg = c.bg }
  hl.MiniCursorword                = { bg = c.cursorword }

  return hl
end

return M
