a, b = 1, 2        # a == 1, b == 2

a = 1, 2, 3, 4     # a == [1, 2, 3, 4]

def get_values
  [1, 2, 3, 4]
end

a, b = get_values  # a == 1, b == 2

first, dummy, dummy, last = get_values

first, _, _, last = get_values

a, *b = get_values    # a == 1, b == [2, 3, 4]

a, *b, c = get_values # a == 1, b == [2, 3], c == 4

first, *, last = 0, *get_values, 5
puts first
puts last