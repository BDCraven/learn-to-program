M = "land"
o = "water"

world =  [[o,o,o,o,o,M,o,o,o,o,o],
          [o,o,o,o,M,M,o,o,o,o,o],
          [o,o,o,o,o,M,o,o,M,M,o],
          [o,o,o,M,o,M,o,o,o,M,o],
          [o,o,o,M,o,M,M,o,o,o,o],
          [o,o,o,o,M,M,M,M,o,o,o],
          [M,M,M,M,M,M,M,M,M,M,M],
          [o,o,o,M,M,o,M,M,M,o,o],
          [o,o,o,o,o,o,M,M,o,o,o],
          [o,M,o,o,o,M,M,o,o,o,o],
          [o,o,o,o,o,o,M,o,o,o,o]]
# the above array is actually populated with "land" and "water"

def continent_size(world, x, y)
  if world[y][x] != ("land" || "water")
    return 0
  end
  if world[y][x] != "land" # y is the index of the array in the array.
# x is the actual element in the array. Coordinates are reversed so that they
# reflect the postition on the graphical representation above.
    return 0
  end

  size = 1
  world[y][x] = "counted land"
  size = size + continent_size(world, x-1, y-1) # calls
  # the method with the new tile location. In the first run this would be
  # continent_size(4, 4) which is water so nothing to add to size and this
  # would return 0 exiting this recursive method call at the second if above.
  size = size + continent_size(world, x  , y-1) # calls 5, 4 which is land so
  # call to the method would return 1 which is added to size and the method
  # would run the same recursive call on the new co-ordinates 5,4
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y  )
  size = size + continent_size(world, x+1, y  )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x  , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end
puts continent_size(world, 5, 5)
