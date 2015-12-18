# Advent of code - day 02 - Part 1 complete
surface_area_total = 0.0
small_sides_total = 0.0

file = File.new('day_02.txt', 'r')
contents = file.read
contents = contents.split(/\n/)
contents = contents.map { |e| e.split("x") }
contents.each do |e|
  l = e[0].to_i
  w = e[1].to_i
  h = e[2].to_i
  # sides
  a = l*w
  b = w*h
  c = h*l

  sa = 2*l*w + 2*w*h + 2*h*l
  surface_area_total += sa

  sides_arr = [a,b,c]
  small_side = sides_arr.min
  small_sides_total += small_side

end

puts surface_area_total
puts small_sides_total
puts surface_area_total + small_sides_total
