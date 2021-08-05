def fibs(num)
  fib = [0, 1]
  i = 2
  until i > num
    fib[i] = fib[i - 1] + fib[i - 2]
    i += 1
  end
  fib[num]
end

def fibs_rec(num)
  return 0 if num.zero?
  return 1 if num == 1

  fibs_rec(num - 1) + fibs_rec(num - 2)
end

def merge_sort(array)
  if array.size < 2
    array
  else
    left = merge_sort(array[0...array.size / 2])
    right = merge_sort(array[array.size / 2...array.size])
    merge(left, right)
  end
end

def merge(left, right, array = [])
  (left.size + right.size).times do
    if left.empty?
      array << right.shift
    elsif right.empty?
      array << left.shift
    else
      comparison = left <=> right
      if comparison == -1
        array << left.shift
      elsif comparison == 1
        array << right.shift
      else
        array << left.shift
      end
    end
  end
  array
end

puts fibs(4)
puts fibs_rec(4)

arr_to_be_sorted = [2, 3, 7, 3, 5, 1, 4, 8]

p merge_sort(arr_to_be_sorted)