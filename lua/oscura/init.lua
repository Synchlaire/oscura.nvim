-- Oscura for Neovim
-- Ported from the VS Code theme by Fey (https://fey.com)

local M = {}

M.config = {
  variant = "midnight",  -- "midnight" | "dusk" | "dawn"
  styles = {
    comments   = { italic = true },
    keywords   = {},
    functions  = {},
    variables  = {},
    parameters = { italic = true },
  },
  -- Override any highlight group: { Normal = { fg = "#..." } }
  on_highlights = nil,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load(variant)
  variant = variant or M.config.variant

  local palette    = require("oscura.palette")
  local highlights = require("oscura.highlights")

  local c  = palette.get(variant)
  local hl = highlights.setup(c)

  -- Apply user style overrides
  local s = M.config.styles
  if s.comments   then hl.Comment = vim.tbl_extend("force", hl.Comment or {}, s.comments) end
  if s.keywords   then
    for _, k in ipairs({ "Keyword", "Statement", "Conditional", "Repeat",
                         "Label", "Operator", "Exception" }) do
      hl[k] = vim.tbl_extend("force", hl[k] or {}, s.keywords)
    end
  end
  if s.functions  then hl.Function = vim.tbl_extend("force", hl.Function  or {}, s.functions) end
  if s.variables  then hl.Identifier = vim.tbl_extend("force", hl.Identifier or {}, s.variables) end

  -- User overrides
  if M.config.on_highlights then
    M.config.on_highlights(hl, c)
  end

  -- Apply
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
  vim.g.colors_name   = "oscura"
  vim.o.termguicolors = true
  vim.o.background    = c.dark and "dark" or "light"

  for group, opts in pairs(hl) do
    if type(opts) == "table" then
      if opts.link then
        vim.api.nvim_set_hl(0, group, { link = opts.link })
      else
        vim.api.nvim_set_hl(0, group, opts)
      end
    end
  end
end

return M
