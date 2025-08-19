local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local autosnippet = ls.extend_decorator.apply(s, { snippetType = "autosnippet" })
return {
  s({ trig = "helloworld", snippetType = "snippet", desc = "A hellow world snippet", wordTrig = true },
    { t("Just a hint of what's to come!"), }
  ),
  autosnippet("trig", t("expansion")),
  s({ trig = "man", snippetType = "autosnippet" }, t("ual")),
}
