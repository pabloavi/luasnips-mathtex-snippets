local ls = require("luasnip")
local s = ls.snippet
local f = ls.function_node

local vec_node = {
	f(function(_, snip)
		return string.format("\\vec{%s} ", snip.captures[1])
	end, {}),
}

local math_wrA_no_backslash = {}

return math_wrA_no_backslash
