arr = [5, 1, 3, 2, 4].sort

p arr.map { |el| el * 10 }

puts arr.reduce(0) { |sum, el| sum + el }

p arr.select { |el| el.even? }