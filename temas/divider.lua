--- divider.lua — Pandoc Lua filter
--- Converte HorizontalRule (--- no Markdown) em separador estilizado LaTeX.
---
--- Uso: pandoc --lua-filter=temas/divider.lua ...

function HorizontalRule()
  if FORMAT:match("latex") or FORMAT:match("pdf") then
    return pandoc.RawBlock("latex", "\\queimadivider")
  end
end
