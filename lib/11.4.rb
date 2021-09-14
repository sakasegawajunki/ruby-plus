def to_hex(r, g, b)
  [r, g, b].inject("#") do |hex, n|
    puts hex
    gex + n.to_s(16).rjust(2, "0")
  end
end