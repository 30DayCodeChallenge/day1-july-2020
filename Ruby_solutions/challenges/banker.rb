def fortune(f, p, c, n, i)
  years = 0
  amount = f
  while years < n
    c1 = c + ((i / 100) * c)
    amount = ((((p / 100) * amount) + amount) - c1)
    years += 1
  end
  amount >= 0
end
