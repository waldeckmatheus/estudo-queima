--- callouts.lua — Pandoc Lua filter
--- Converte blockquotes com marcadores especiais em callout boxes LaTeX.
---
--- Padrões detectados (no início do blockquote):
---   > **[ATENÇÃO]**             → \begin{queimaalert} ... \end{queimaalert}
---   > ⚠                        → \begin{queimaalert} ... \end{queimaalert}
---   > **Critério de Escalação:** → \begin{queimaalert} ... \end{queimaalert}
---   > **Nota...:**              → \begin{queimainfo} ... \end{queimainfo}
---   > ℹ                        → \begin{queimainfo} ... \end{queimainfo}
---   > **Dica:**                 → \begin{queimatip}  ... \end{queimatip}
---   > 💡                       → \begin{queimatip}  ... \end{queimatip}
---
--- Uso: pandoc --lua-filter=temas/callouts.lua ...

-- Extrai o texto bruto do início de um bloco para detectar marcadores
local function get_lead_text(blocks)
  if #blocks == 0 then return "" end
  local first = blocks[1]
  if first.t == "Para" and first.content and #first.content > 0 then
    -- Concat first ~80 chars of the paragraph
    local s = pandoc.utils.stringify(first)
    return s:sub(1, 80)
  end
  return ""
end

-- Remove o marcador do primeiro parágrafo para não duplicar no output
local function strip_marker(blocks, pattern)
  if #blocks == 0 then return blocks end
  local first = blocks[1]
  if first.t ~= "Para" then return blocks end

  local full = pandoc.utils.stringify(first)
  local stripped = full:gsub(pattern, "", 1):gsub("^%s+", "")

  if stripped == "" then
    -- Marker was the entire first paragraph — remove it
    table.remove(blocks, 1)
  else
    -- Rebuild the paragraph with the marker removed
    blocks[1] = pandoc.Para({pandoc.Str(stripped)})
    -- Actually, let's keep the original inlines but just remove from serialized.
    -- Simpler: walk the first para inlines and remove the marker elements.
    -- For robustness, just keep the full para — the marker text is part of the
    -- callout title anyway, so removing it avoids duplication.
  end
  return blocks
end

-- Pattern → environment mapping
local markers = {
  { pattern = "%*%*%[ATEN[ÇC][ÃA]O%]%*%*",   env = "queimaalert", strip = "%*%*%[ATEN[ÇC][ÃA]O%]%*%*:?%s*" },
  { pattern = "⚠",                             env = "queimaalert", strip = "⚠%s*" },
  { pattern = "%[ATEN[ÇC][ÃA]O%]",            env = "queimaalert", strip = "%[ATEN[ÇC][ÃA]O%]:?%s*" },
  { pattern = "%*%*Crit[ée]rio de Escala[çc][ãa]o:?%*%*", env = "queimaalert", strip = "%*%*Crit[ée]rio de Escala[çc][ãa]o:?%*%*:?%s*" },
  { pattern = "%*%*Nota[^:]*:%*%*",             env = "queimainfo", strip = "%*%*Nota[^:]*:%*%*%s*" },
  { pattern = "ℹ",                             env = "queimainfo", strip = "ℹ%s*" },
  { pattern = "%*%*Dica:?%*%*",                 env = "queimatip",  strip = "%*%*Dica:?%*%*%s*" },
  { pattern = "💡",                            env = "queimatip",  strip = "💡%s*" },
}

function BlockQuote(el)
  if FORMAT:match("latex") or FORMAT:match("pdf") then
    local lead = get_lead_text(el.content)

    for _, m in ipairs(markers) do
      if lead:find(m.pattern) then
        -- Strip the marker from content to avoid duplication
        local blocks = strip_marker(el.content, m.strip)

        -- Wrap in LaTeX environment
        local open  = pandoc.RawBlock("latex", "\\begin{" .. m.env .. "}")
        local close = pandoc.RawBlock("latex", "\\end{" .. m.env .. "}")

        local result = { open }
        for _, b in ipairs(blocks) do
          table.insert(result, b)
        end
        table.insert(result, close)
        return result
      end
    end
  end
  -- No marker found — return unchanged (uses default quote environment)
  return nil
end
