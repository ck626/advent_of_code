# Advent of code - day 02 - Parts 1,2 complete
surface_area_total = 0.0
small_sides_total = 0.0
ribbon_total = 0.0

file = File.new('day_02.txt', 'r')
contents = file.read
contents = contents.split(/\n/)
contents = contents.map { |e| e.split("x") }
contents.each do |e|
  l = e[0].to_i
  w = e[1].to_i
  h = e[2].to_i
  # sides vars
  a = l*w
  b = w*h
  c = h*l
  # perimeters
  pa = 2*l + 2*w
  pb = 2*w + 2*h
  pc = 2*h + 2*l
  # surface area
  sa = 2*a + 2*b + 2*c
  # volume
  v = l*w*h
  # additions to totals
  surface_area_total += sa

  sides_arr = [a,b,c]
  small_side = sides_arr.min
  small_sides_total += small_side

  perimeters_arr = [pa,pb,pc]
  small_perimeter = perimeters_arr.min
  ribbon_total += small_perimeter + v
end

puts surface_area_total + small_sides_total
puts ribbon_total
