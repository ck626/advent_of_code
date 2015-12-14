# advent_of_code day 01
file = File.open("day_01.txt", "r")
contents = file.read
contents = contents.split(/()/)

floor = 0

contents.each do |c|
  if c == "("
    floor += 1
  elsif c == ")"
    floor -= 1
  else
  end
end

puts "Santa is on floor #{floor}"
