--- resumo.lua — Pandoc Lua filter
--- Converte texto em **negrito** (Strong) em marca-texto (highlight).
--- O texto mantém o negrito e ganha um fundo colorido via \queimahl{}.
--- Uso: pandoc --lua-filter=temas/resumo.lua ...

-- Escapa caracteres especiais do LaTeX
local function latex_escape(s)
  s = s:gsub("\\", "\\textbackslash{}")
  s = s:gsub("([#$%%&_{}])", "\\%1")
  s = s:gsub("%^", "\\textasciicircum{}")
  s = s:gsub("~", "\\textasciitilde{}")
  return s
end

function Strong(elem)
  -- Sanitiza o texto para uso seguro com \hl (soul package):
  -- substitui em-dash e en-dash por equivalentes seguros
  local text = pandoc.utils.stringify(elem.content)
  text = text:gsub("\u{2014}", "---")  -- em-dash
  text = text:gsub("\u{2013}", "--")   -- en-dash
  text = latex_escape(text)

  return pandoc.RawInline(
    "latex",
    "\\queimahl{\\textbf{" .. text .. "}}"
  )
end
