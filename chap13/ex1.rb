class Array
  def shuffle
    unshuffled_ary = self
    shuffled_ary = []
    item = []

    while unshuffled_ary.length > 0
      item << unshuffled_ary[rand(unshuffled_ary.length)]
      unshuffled_ary -= item # why doesn't delete remove the item from
      # the array?
      shuffled_ary += item # why doesn't append add the item to the array?
      item.pop
    end
    return shuffled_ary
  end
end

p [1, 2, 3, 4, 5].shuffle
p ["apples", "bananas", "oranges", "pears"].shuffle
