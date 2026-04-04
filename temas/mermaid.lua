--- mermaid.lua — Pandoc Lua filter
--- Converte blocos ```mermaid em imagens PNG via mmdc (mermaid-cli).
--- Gera diagramas com cores adaptadas ao tema (claro/escuro/impressão).
--- Uso: pandoc --lua-filter=temas/mermaid.lua ...

local counter = 0
local mermaid_cfg = nil  -- cache do arquivo de config gerado

-- Lê cores do metadata do documento para adaptar o Mermaid ao tema
function Meta(meta)
  local bg = pandoc.utils.stringify(meta.bgcolor or "FFFFFF")
  local fg = pandoc.utils.stringify(meta.fgcolor or "000000")
  local accent = pandoc.utils.stringify(meta.accentcolor or "1A6FA8")
  local heading = pandoc.utils.stringify(meta.headingcolor or "1A3A5C")

  -- Determina se o tema é escuro pelo brilho do background
  local r = tonumber(bg:sub(1,2), 16) or 255
  local g = tonumber(bg:sub(3,4), 16) or 255
  local b = tonumber(bg:sub(5,6), 16) or 255
  local luminance = (0.299*r + 0.587*g + 0.114*b) / 255

  local base_theme = luminance < 0.5 and "dark" or "default"

  -- Gera arquivo JSON de configuração do Mermaid com as cores do tema
  local cfg_path = os.tmpname() .. ".json"
  local fh = io.open(cfg_path, "w")
  fh:write(string.format([[{
  "theme": "%s",
  "themeVariables": {
    "primaryColor": "#%s",
    "primaryTextColor": "#%s",
    "primaryBorderColor": "#%s",
    "lineColor": "#%s",
    "secondaryColor": "#%s",
    "tertiaryColor": "#%s",
    "background": "#%s",
    "mainBkg": "#%s",
    "nodeBorder": "#%s",
    "clusterBkg": "#%s",
    "titleColor": "#%s",
    "edgeLabelBackground": "#%s"
  }
}]], base_theme, accent, fg, heading, fg, bg, bg, bg, accent, heading, bg, fg, bg))
  fh:close()

  mermaid_cfg = { path = cfg_path, hash_salt = bg .. fg .. accent }
end

function CodeBlock(block)
  if block.classes[1] ~= "mermaid" then
    return nil
  end

  counter = counter + 1
  -- Hash inclui conteúdo + cores do tema → cache separado por tema
  local salt = mermaid_cfg and mermaid_cfg.hash_salt or ""
  local hash = pandoc.utils.sha1(block.text .. salt)
  local outfile = "dist/.mermaid-" .. hash .. ".png"

  -- Só renderiza se ainda não existir (cache por conteúdo+tema)
  local f = io.open(outfile, "rb")
  if f then
    f:close()
  else
    local tmpfile = os.tmpname() .. ".mmd"
    local fh = io.open(tmpfile, "w")
    fh:write(block.text)
    fh:close()

    local cfg_flag = ""
    if mermaid_cfg then
      cfg_flag = " -c " .. mermaid_cfg.path
    end

    local cmd = string.format(
      "mmdc -i %s -o %s -b transparent -w 800 -p temas/puppeteer.json%s --quiet 2>/dev/null",
      tmpfile, outfile, cfg_flag
    )
    os.execute(cmd)
    os.remove(tmpfile)
  end

  -- Retorna elemento de imagem centrado
  local caption = block.attributes["caption"] or ""
  return pandoc.Para({ pandoc.Image(caption, outfile) })
end

-- Garante que Meta roda antes de CodeBlock
return {
  { Meta = Meta },
  { CodeBlock = CodeBlock }
}
