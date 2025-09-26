
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  s("apuntes", fmt([[
\documentclass[11pt]{{article}}
\usepackage[utf8]{{inputenc}}
\usepackage[spanish]{{babel}}
\usepackage{{amsmath, amssymb, graphicx, geometry, fancyhdr, xcolor, titlesec}}

\geometry{{margin=2.5cm}}
\pagestyle{{fancy}}
\fancyhf{{}}
\rhead{{\textit{{Mis Apuntes}}}}
\lhead{{\textbf{{\today}}}}
\rfoot{{\thepage}}

\titleformat{{\section}}{{\color{{blue}}\normalfont\Large\bfseries}}{{\thesection}}{{1em}}{{}}
\titleformat{{\subsection}}{{\color{{black}}\normalfont\large\bfseries}}{{\thesubsection}}{{1em}}{{}}

\newcommand{{\defn}}[1]{{\textbf{{\textit{{#1}}}}}}

\begin{{document}}

\begin{{center}}
    {{\LARGE \textbf{{{}}}}}\\
    {{\large Fecha: \today}}
\end{{center}}

\vspace{{1em}}

\section{{{}}}
{}

\end{{document}}
  ]], {
    i(1, "Nombre del Tema"),
    i(2, "Sección 1"),
    i(3, "Aquí van tus apuntes...")
  })),

  s("sec", fmt("\section{{{}}}", { i(1, "Título de sección") })),
  s("sub", fmt("\subsection{{{}}}", { i(1, "Título de subsección") })),
  s("beg", fmt("\begin{{{}}}\n  {}\n\end{{{}}}", {
    i(1, "entorno"),
    i(2, "contenido"),
    rep(1)
  })),
}
