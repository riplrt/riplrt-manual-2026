-- Build-time Mermaid SVGs (mermaid-format: svg) carry a fixed height="…" that letterboxes the
-- diagram; drop it so CSS `height: auto` sizes the figure from the viewBox.
local function strip(el)
  if el.format:match("html") and el.text:find('<svg id="mermaid%-figure', 1) then
    el.text = el.text:gsub('(<svg id="mermaid%-figure[^>]-) height="[^"]*"', '%1', 1)
    return el
  end
end
return { { RawBlock = strip, RawInline = strip } }
