--- refs.lua — Pandoc Lua filter
--- Converte referências [web:N] em badges visuais (superscript colorido).
---
--- Entrada (markdown): ... texto [web:42] mais texto [web:10][web:11] ...
--- Saída (LaTeX):       ... texto \webref{web:42} mais texto \webref{web:10}\webref{web:11} ...
---
--- O comando \webref{} é definido no template.tex e renderiza como
--- superscript em cor accent: ᵂᵉᵇ⁴²
---
--- Uso: pandoc --lua-filter=temas/refs.lua ...

function Str(el)
  if FORMAT:match("latex") or FORMAT:match("pdf") then
    local text = el.text

    -- Match one or more consecutive [web:N] tags
    if text:find("%[web:%d+%]") then
      local parts = {}
      local pos = 1

      while pos <= #text do
        -- Find next [web:N]
        local s, e, tag = text:find("%[(web:%d+)%]", pos)
        if s then
          -- Add any text before the tag
          if s > pos then
            table.insert(parts, pandoc.Str(text:sub(pos, s - 1)))
          end
          -- Add the ref badge
          table.insert(parts, pandoc.RawInline("latex", "\\webref{" .. tag .. "}"))
          pos = e + 1
        else
          -- No more tags — add remaining text
          table.insert(parts, pandoc.Str(text:sub(pos)))
          break
        end
      end

      if #parts == 1 then
        return parts[1]
      end
      return parts
    end
  end
  return nil
end
