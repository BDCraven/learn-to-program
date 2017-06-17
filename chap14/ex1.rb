def profile(block_description, &block)
  profiling_on = false # set to true/false to turn profiling on
  if profiling_on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end
