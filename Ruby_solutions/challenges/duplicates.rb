def removeDuplicates(str)
  arr = str.split("")
  hash = arr.each_with_object(Hash.new(0)) { |n, h| h[n] += 1 }
  hash.values.count { |h| h > 1 }
end
