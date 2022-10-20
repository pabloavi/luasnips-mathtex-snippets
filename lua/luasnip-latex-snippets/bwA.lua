local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local bwA = {
	s({ trig = "ali", name = "Align" }, { t({ "\\begin{align*}", "\t" }), i(1), t({ "", ".\\end{align*}" }), i(0) }),

	ls.parser.parse_snippet({ trig = "beg", name = "begin{} / end{}" }, "\\begin{$1}\n\t$0\n\\end{$1}"),
	ls.parser.parse_snippet({ trig = "case", name = "cases" }, "\\begin{cases}\n\t$1\n\\end{cases}"),
	
--	ls.parser.parse_snippet({ trig = "item", name = "Itemize environment" }, "\\begin{itemize}\n\\item\t$0\n\\end{itemize}"),


}

return bwA
