local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  s({ trig = "helloworld", snippetType = "autosnippet", desc = "A hellow world snippet", wordTrig = false },
    { t("Just a hint of what's to come!"), }
  ),
}
