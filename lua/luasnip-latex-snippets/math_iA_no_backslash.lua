local ls = require("luasnip")
local with_priority = require("luasnip-latex-snippets.util.utils").with_priority

local math_iA_no_backslash = {

	ls.parser.parse_snippet({ trig = "SI", name = "SI" }, "\\SI{$1}{$2}"),
}

return math_iA_no_backslash
