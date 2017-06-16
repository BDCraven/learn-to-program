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
  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x  , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y  )
  size = size + continent_size(world, x+1, y  )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x  , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end
puts continent_size(world, 5, 5)
