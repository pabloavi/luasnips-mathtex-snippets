local ls = require("luasnip")

local math_i = {
	ls.parser.parse_snippet({ trig = "limsup", name = "limsup" }, "\\limsup_{${1:n} \\to ${2:\\infty}}"),

	ls.parser.parse_snippet(
		{ trig = "sequence", name = "Sequence indexed by n, from m to infinity" },
		"(${1:a}_${2:n})_{${2:n}=${3:m}}^{${4:\\infty}}"
	),
	
}

return math_i
