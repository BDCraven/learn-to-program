def sort(some_array)
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array.length <= 0
    return sorted_array
  end

  smallest = unsorted_array.pop # popped the last element from the array."Mr Men"
  still_unsorted = []
# compare each object in the unsorted_array to see if it is smaller than the
# object popped from unsorted. if it is push smallest to still_unsorted.
# smallest now points to the tested_obj. If not the tested object is added to
# still unsorted.
  unsorted_array.each do |tested_obj|
    if tested_obj < smallest
      still_unsorted.push smallest
      smallest = tested_obj
    else
      still_unsorted.push tested_obj
    end
  end
  sorted_array.push smallest # add smallest (Mr Men) to sorted_array
  recursive_sort(still_unsorted, sorted_array) # recursive call to
  # recursive_sort with still_unsorted as the argument.
end



puts (sort(["Spot", "Thomas the Tank Engine", "The Gruffalo", "Mr Men"]))
