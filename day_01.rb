# advent_of_code day 01
file = File.open("day_01.txt", "r")
contents = file.read
contents = contents.split(/()/)
contents = contents.select {|e| e != ""}

floor = 0
position = []

contents.each_with_index do |c, i|
  if c == "("
    floor += 1
  elsif c == ")"
    floor -= 1
    if floor == -1
      position << i+1
    end
  end
end

puts "Santa is on floor #{floor}"

puts "Santa entered the basement at position #{position[0]}"
