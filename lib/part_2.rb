def element_count(arr)
  count_hash = Hash.new(0)
  arr.each { |elem| count_hash[elem] += 1 }
  count_hash
end

def char_replace!(str, hash)
  str.each_char.with_index do |char, idx|
    if hash.has_key?(char)
      str[idx] = hash[char]
    end
  end
  str
end

def product_inject(nums)
  nums.inject { |prod, n| prod * n }
end