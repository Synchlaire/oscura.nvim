-- Oscura color palette
-- Variants: "midnight" (deepest dark), "dusk" (lighter dark), "dawn" (light)

local M = {}

-- Each variant is a complete, self-contained color table.
M.variants = {
  midnight = {
    dark = true,

    bg        = "#0B0B0F",
    bg_float  = "#161616",
    bg_popup  = "#2C2C31",
    bg_sel    = "#232323",

    fg           = "#E6E6E6",
    fg_muted     = "#C1C1C1",
    fg_subtle    = "#7E7E7E",

    comment      = "#46474F",
    keyword      = "#9099A1",
    func         = "#E6E7A3",
    class        = "#E6E7A3",
    constant     = "#F9B98C",
    string       = "#E6E6E6",
    string_teal  = "#4EBE96",
    string_tmpl  = "#F6B98B",
    attribute    = "#54C0A3",
    regex        = "#868F97",
    bracket      = "#5C6974",
    bracket2     = "#6E678E",
    bracket3     = "#6A7782",
    invalid      = "#D84F68",
    lang_method  = "#868F97",

    line_nr      = "#32333B",
    accent       = "#E6E7A3",
    accent_dim   = "#D6D876",
    link         = "#479FFA",
    teal         = "#4EBE96",

    error        = "#FF5C5C",
    warning      = "#D2D714",
    added        = "#4EBE96",
    deleted      = "#D84F68",
    modified     = "#E6E7A3",

    diff_add_bg  = "#1a2e28",
    diff_del_bg  = "#2e1a1a",
    diff_chg_bg  = "#1e1e1a",
    diff_txt_bg  = "#2a2a1a",

    cursor_line  = "#FFFFFF08",
    visual       = "#EAEC8A21",
    search       = "#EAEC8A54",
    cursorword   = "#EAEC8A16",
    pmenu_sel    = "#FFFFFF16",
    ibl_indent   = "#1C1C21",
    vtext_warn   = "#2a2800",

    none         = "NONE",
  },

  dusk = {
    dark = true,

    bg        = "#131419",
    bg_float  = "#1C1C22",
    bg_popup  = "#2C2C31",
    bg_sel    = "#232323",

    fg           = "#E6E6E6",
    fg_muted     = "#C1C1C1",
    fg_subtle    = "#7E7E7E",

    comment      = "#46474F",
    keyword      = "#9099A1",
    func         = "#E6E7A3",
    class        = "#E6E7A3",
    constant     = "#F9B98C",
    string       = "#E6E6E6",
    string_teal  = "#4EBE96",
    string_tmpl  = "#F6B98B",
    attribute    = "#54C0A3",
    regex        = "#868F97",
    bracket      = "#5C6974",
    bracket2     = "#6E678E",
    bracket3     = "#6A7782",
    invalid      = "#D84F68",
    lang_method  = "#868F97",

    line_nr      = "#32333B",
    accent       = "#E6E7A3",
    accent_dim   = "#D6D876",
    link         = "#479FFA",
    teal         = "#4EBE96",

    error        = "#FF5C5C",
    warning      = "#D2D714",
    added        = "#4EBE96",
    deleted      = "#D84F68",
    modified     = "#E6E7A3",

    diff_add_bg  = "#1a2e28",
    diff_del_bg  = "#2e1a1a",
    diff_chg_bg  = "#1e1e1a",
    diff_txt_bg  = "#2a2a1a",

    cursor_line  = "#FFFFFF08",
    visual       = "#EAEC8A21",
    search       = "#EAEC8A54",
    cursorword   = "#EAEC8A16",
    pmenu_sel    = "#FFFFFF16",
    ibl_indent   = "#1C1C21",
    vtext_warn   = "#2a2800",

    none         = "NONE",
  },

  -- Dawn: light theme derived from the Oscura palette identity.
  -- Backgrounds are warm off-whites; syntax colors are darkened/saturated
  -- versions of the same hues so the accent language is instantly familiar.
  dawn = {
    dark = false,

    bg        = "#F5F4EF",  -- warm off-white
    bg_float  = "#ECEAE3",  -- slightly deeper for floats
    bg_popup  = "#E4E2D9",  -- dropdown / completion menu
    bg_sel    = "#DDD9CC",  -- selected list item

    fg           = "#1C1C20",  -- near-black, warm tint
    fg_muted     = "#555560",  -- de-emphasised text
    fg_subtle    = "#888898",  -- very secondary text

    -- Syntax: darkened/saturated counterparts of the dark palette hues
    comment      = "#9A9BAA",  -- light slate (readable but receded)
    keyword      = "#5A6470",  -- darker cool gray (mirrors #9099A1 intent)
    func         = "#6B6A1A",  -- dark olive-yellow (mirrors #E6E7A3)
    class        = "#6B6A1A",
    constant     = "#A0521A",  -- burnt orange (mirrors #F9B98C)
    string       = "#1C1C20",  -- same as fg — neutral strings
    string_teal  = "#1E7A5E",  -- deep teal (mirrors #4EBE96)
    string_tmpl  = "#9E5018",  -- deeper orange-brown (mirrors #F6B98B)
    attribute    = "#1E8070",  -- darker teal-green (mirrors #54C0A3)
    regex        = "#5A6470",  -- same as keyword (muted)
    bracket      = "#7A8590",  -- medium cool gray
    bracket2     = "#6A6488",  -- medium purple-gray
    bracket3     = "#6A7782",  -- same as dark variant (already neutral)
    invalid      = "#B03050",  -- deeper rose-red (mirrors #D84F68)
    lang_method  = "#5A6470",  -- muted cool gray

    line_nr      = "#B8B6AC",  -- light gray, visible on off-white
    accent       = "#6B6A1A",  -- dark olive (mirrors #E6E7A3 accent)
    accent_dim   = "#888010",  -- dimmer olive
    link         = "#1A6FCC",  -- deeper blue (mirrors #479FFA)
    teal         = "#1E7A5E",  -- deep teal

    error        = "#CC2222",  -- deeper red for light bg
    warning      = "#8C8800",  -- dark yellow-green
    added        = "#1E7A5E",
    deleted      = "#B03050",
    modified     = "#6B6A1A",

    diff_add_bg  = "#D4EDE6",  -- pale teal tint
    diff_del_bg  = "#F0D4D8",  -- pale rose tint
    diff_chg_bg  = "#EDE8D4",  -- pale warm yellow
    diff_txt_bg  = "#E2DAB8",  -- slightly deeper warm yellow

    cursor_line  = "#00000008",
    visual       = "#6B6A1A28",  -- olive tint selection
    search       = "#A0521A44",  -- warm orange search highlight
    cursorword   = "#6B6A1A18",
    pmenu_sel    = "#00000016",
    ibl_indent   = "#D8D6CE",
    vtext_warn   = "#8C880018",

    none         = "NONE",
  },
}

function M.get(variant)
  variant = variant or "midnight"
  return M.variants[variant] or M.variants.midnight
end

return M
