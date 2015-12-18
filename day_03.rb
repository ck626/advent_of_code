# Advent of code - day 03 part 01 completed

# Part 1
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

# Part 2

directions = File.read('day_03.txt')
# Found out about cycle and learned from this site:
# http://www.sitepoint.com/guide-ruby-collections-iii-enumerable-enumerator/
both_santas_arr = [[0,0],[0,0]].cycle

houses = { [0,0] => "visited" }

directions.each_char do |e|
  santa = both_santas_arr.next
  case e
  when 'v'
    santa[1] += 1
  when '<'
    santa[0] -= 1
  when '^'
    santa[1] -= 1
  when '>'
    santa[0] += 1
  end

  houses[ [santa[0], santa[1]] ] = "visited"
end

puts houses.length
