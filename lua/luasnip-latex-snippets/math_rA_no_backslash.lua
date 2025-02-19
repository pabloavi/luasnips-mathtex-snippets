local ls = require("luasnip")
local s = ls.snippet
local f = ls.function_node

local postfix_trig = function(match)
	return string.format("(%s)", match)
end

local postfix_node = f(function(_, snip)
	return string.format("\\%s", snip.captures[1])
end, {})

local build_snippet = function(trig, node, match, priority, name)
	return s({
		name = name and name(match),
		trig = trig(match),
		priority = priority,
	}, vim.deepcopy(node))
end

local build_with_priority = function(trig, node, priority, name)
	return function(match)
		return build_snippet(trig, node, match, priority, name)
	end
end

local greek_postfix_completions = function()
	local re =
		"[aA]lpha|[bB]eta|[cC]hi|[dD]elta|[eE]psilon|[gG]amma|[iI]ota|[kK]appa|[lL]ambda|[mM]u|[nN]u|[oO]mega|[pP]hi|[pP]i|[rR]ho|[sS]igma|[tT]au|[tT]heta|[zZ]eta|[eE]ta|[cC]hi|[pP]si"

	local build = build_with_priority(postfix_trig, postfix_node, 200)
	return vim.tbl_map(build, vim.split(re, "|"))
end

local postfix_completions = function()
	local re = "sin|cos|tan|csc|sec|cot|ln|log|exp|star|sen"

	local build = build_with_priority(postfix_trig, postfix_node)
	return vim.tbl_map(build, vim.split(re, "|"))
end

local math_rA_no_backslash = {}

vim.list_extend(math_rA_no_backslash, greek_postfix_completions())
vim.list_extend(math_rA_no_backslash, postfix_completions())
vim.list_extend(math_rA_no_backslash, { build_snippet(postfix_trig, postfix_node, "q?quad", 200) })

return math_rA_no_backslash
