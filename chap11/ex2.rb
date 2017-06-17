def music_shuffle(filenames)
  filenames = filenames.sort
  len = filenames.length # length = 7

  2.times do
    l_idx = 0
    r_idx = len/2 # 7/2 = 3
    shuf = []

    while shuf.length < len # repeat until shuf has all filenames
      if shuf.length%2 == 0
        shuf.push(filenames[r_idx]) # add filenames[3] to shuf
        r_idx = r_idx + 1 # add one to r_idx
      else
        shuf.push(filenames[l_idx]) # add filenames[0] to shuf
        l_idx = l_idx + 1 # add one to l-idx
      end
    end
    filenames = shuf # filenames now points to the shuffled files
  end
  arr = []
  cut = rand(len) # random number 0-7
  idx = 0

  while idx < len # while idx is less than the length (7)
    arr.push(filenames[(idx+cut)%len]) #push filenames from the vut index and
    # incriment using modulo on each loop
    idx = idx +1
  end
  arr
end
songs = ["aa/bbb", "aa/ccc", "aa/ddd",
          "AAA/xxxx", "AAA/yyyy", "AAA/zzzz", "foo/bar"]
puts(music_shuffle(songs))
