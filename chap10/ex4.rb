def dictionary_sort(arr)
  rec_dict_sort(arr, [])
end

def rec_dict_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end
  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase  # apple is smaller than
      # grape so smallest now points to apple
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object # pears is larger than grapes so
      # pears is added to still_unsorted
    end
  end
  sorted.push smallest # when each has been through unsorted once
  # smallest = apple and this is added to sorted.
  rec_dict_sort still_unsorted, sorted # call the method again to find the
  # next smallest.
end



p dictionary_sort(["pears", "Apples", "oranges", "bananas", "Grapes"])
