# def bubble_sort(numbers)
#   length = numbers.length-1 
#   no_change = false
#   swapped = 0
  
#   while no_change == false do 
#     numbers.each_with_index do |numba, index|
#       if numba[index] > numba[index+1]
#         #swap their positions
#         numba[index], numba[index+1] = numba[index+1], numba[index]
#       else #if they don't need to be swapped
#         swapped += 1
#         if swapped == length
#           break
#         end
#         next #is this right?
#       end
#     end

#   end

# end
# 
def bubble_sort(array)
  #from the last position to the first, loop:
  (array.length - 1).downto(0) do |i| #i is the current position in the array
    #from the first position to the last, loop:
    0.upto(i - 1) do |j| 
      next unless array[j] > array[j + 1]
      array[j], array[j + 1] = array[j + 1], array[j]
    end
  end
  p array
end

bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]