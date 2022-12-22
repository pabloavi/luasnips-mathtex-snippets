local ls = require("luasnip")
local s = ls.snippet
local f = ls.function_node
local with_priority = require("luasnip-latex-snippets.util.utils").with_priority

local math_iA = {

	ls.parser.parse_snippet({ trig = "rd", name = "to the ... power ^{()}" }, "^{($1)}$0"),
	ls.parser.parse_snippet({ trig = "xnn", name = "xn" }, "x_{n}"),
	ls.parser.parse_snippet({ trig = "ynn", name = "yn" }, "y_{n}"),
	ls.parser.parse_snippet({ trig = "xii", name = "xi" }, "x_{i}"),
	ls.parser.parse_snippet({ trig = "yii", name = "yi" }, "y_{i}"),
	ls.parser.parse_snippet({ trig = "xjj", name = "xj" }, "x_{j}"),
	ls.parser.parse_snippet({ trig = "yjj", name = "yj" }, "y_{j}"),
	ls.parser.parse_snippet({ trig = "xp1", name = "x" }, "x_{n+1}"),
	ls.parser.parse_snippet({ trig = "xmm", name = "x" }, "x_{m}"),

	with_priority(ls.parser.parse_snippet({ trig = "<->", name = "leftrightarrow" }, "\\leftrightarrow"), 200),
	ls.parser.parse_snippet({ trig = "!>", name = "mapsto" }, "\\mapsto"),
	ls.parser.parse_snippet({ trig = "rij", name = "mrij" }, "(${1:x}_${2:n})_{${3:$2}\\in${4:\\N}}$0"),
	ls.parser.parse_snippet({ trig = "nabl", name = "nabla" }, "\\nabla"),
	ls.parser.parse_snippet({ trig = "<!", name = "normal" }, "\\triangleleft"),
	ls.parser.parse_snippet({ trig = "floor", name = "floor" }, "\\left\\lfloor $1 \\right\\rfloor$0"),
	ls.parser.parse_snippet({ trig = "\\\\\\", name = "setminus" }, "\\setminus"),

	ls.parser.parse_snippet({ trig = "letw", name = "let omega" }, "Let $\\Omega \\subset \\C$ be open."),
	ls.parser.parse_snippet({ trig = "nnn", name = "bigcap" }, "\\bigcap_{${1:i \\in ${2: I}}} $0"),
	ls.parser.parse_snippet({ trig = "<>", name = "hokje" }, "\\diamond"),

	ls.parser.parse_snippet({ trig = "stt", name = "text subscript" }, "_\\text{$1} $0"),

	with_priority(ls.parser.parse_snippet({ trig = "**", name = "cdot" }, "\\cdot"), 100),

	ls.parser.parse_snippet(
		{ trig = "cvec", name = "column vector" },
		"\\begin{pmatrix} ${1:x}_${2:1}\\\\ \\vdots\\\\ $1_${2:n} \\end{pmatrix}"
	),
	ls.parser.parse_snippet({ trig = "ceil", name = "ceil" }, "\\left\\lceil $1 \\right\\rceil $0"),

	ls.parser.parse_snippet({ trig = "UU", name = "cup" }, "\\cup"),
	ls.parser.parse_snippet({ trig = "Nn", name = "cap" }, "\\cap"),
	ls.parser.parse_snippet({ trig = "uuu", name = "bigcup" }, "\\bigcup_{${1:i \\in ${2: I}}} $0"),
	ls.parser.parse_snippet({ trig = "lll", name = "l" }, "\\ell"),

	ls.parser.parse_snippet({ trig = "==", name = "equals" }, [[&= $1 \\\\]]),
	ls.parser.parse_snippet({ trig = "compl", name = "complement" }, "^{c}"),

}

return math_iA
