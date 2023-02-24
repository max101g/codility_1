# Challenge 1
def compare_integers(a, b)
    if a < b
      "a is less than b"
    elsif a > b
      "a is greater than b"
    elsif a == b 
      "a is equal to b"
    end
end
  

# Challenge 2

def ordered_count(a)
    # create an empty array and shovel the values of a into the empty array
    arr = []
    new_arr = (arr << a)

    # map through the array and use chars to turn a into independent characters/ values

    array = new_arr.map(&:chars).flatten

    # find the value of the new array
    n = array.length

    # loop through the array and use bubble-sort to put identical elements side by side

    loop do
        swapped = false

        (n-1).times do |i|
            if array[i] > array[i + 1]
            array[i], array[i + 1] = array [i + 1], array[i]

            swapped = true
            end
    end

        break if not swapped
    end

    # create a new hash 
    # iterate through the sorted array
    # count the number of identical elements and place them into the new hash
    # turn the hash into an array

    new_hash = Hash.new(0)

    array.each { |element| new_hash[element] += 1}

    return new_hash.to_a
end
  