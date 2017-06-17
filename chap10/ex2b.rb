def sort(list)
  sorted_words = []

  while list.length != 0
    smallest = list.pop
    still_unsorted = []

    list.each do |word|
      if word < smallest
        still_unsorted.push smallest
        smallest = word
      else
        still_unsorted.push word
      end
    end
    sorted_words.push smallest
    list = still_unsorted 
  end
end
p sort(["bananas", "pears", "apples", "grapes", "oranges"])
