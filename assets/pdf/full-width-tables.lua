-- Give tables without explicit column widths equal full-width columns, so fill-in tables span the page.
function Table(tbl)
  local n = #tbl.colspecs
  for _, spec in ipairs(tbl.colspecs) do
    if spec[2] ~= nil then return nil end
  end
  for i = 1, n do tbl.colspecs[i] = { tbl.colspecs[i][1], 1 / n } end
  return tbl
end
