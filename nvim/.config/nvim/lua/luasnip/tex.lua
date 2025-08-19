local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  s({ trig = "\"", snippetType = "autosnippet", desc = "quotation marks" },
    fmta(
      [[``<>'' ]],
      { i(1, "text"), }
    )
  ),
  s({ trig = "fig", snippetType = "snippet", dscr = "A basic figure environment" },
    fmta(
      [[
        \begin{figure}
        \centering
        \includegraphics[width=0.9\linewidth]{<>}
        \caption{
            \textbf{<>}
            <>
            }
        \label{fig:<>}
        \end{figure}

        ]],
      { i(1, "filename"),
        i(2, "captionBold"),
        i(3, "captionText"),
        i(4, "figureLabel"), }
    )
  ),
}
