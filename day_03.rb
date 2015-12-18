# Advent of code - day 03 part 01 completed
directions = File.read('day_03.txt')

current_x = 0
current_y = 0
houses = { [0,0] => "visited" }

directions.each_char do |e|
  case e
  when 'v'
    current_y += 1
  when '<'
    current_x -= 1
  when '^'
    current_y -= 1
  when '>'
    current_x += 1
  end
  houses[ [current_x,current_y] ] = "visited"
end

puts houses.length
