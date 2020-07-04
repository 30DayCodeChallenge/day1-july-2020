def capital(str, idx)
  arr = []
  str.split("").each_with_index { |val, i| idx.include?(i) ? arr << val.upcase : arr << val }
  arr.join
end
