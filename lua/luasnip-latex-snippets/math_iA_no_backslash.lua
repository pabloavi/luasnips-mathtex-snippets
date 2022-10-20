local ls = require("luasnip")
local with_priority = require("luasnip-latex-snippets.util.utils").with_priority

local math_iA_no_backslash = {
	ls.parser.parse_snippet({ trig = "sq", name = "\\sqrt{}" }, "\\sqrt{${1:${TM_SELECTED_TEXT}}} $0"),

	ls.parser.parse_snippet({ trig = "inf", name = "\\infty" }, "\\infty"),
	ls.parser.parse_snippet({ trig = "inn", name = "in " }, "\\in "),
	ls.parser.parse_snippet({ trig = "SI", name = "SI" }, "\\SI{$1}{$2}"),
}

return math_iA_no_backslash
