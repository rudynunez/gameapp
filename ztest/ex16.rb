filename = ARGV.first

puts "we're going to erase #{filename}"
puts "\nHere is the content of the file:"
txt = open(filename)
print "\n#{txt.read}"
puts "\nIf you don't want to do that, hit CTRL-C (^C)"
puts "If you do want to do that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "now I'm going ot ask you for three lines."

print "line 1:"
line1 = $stdin.gets.chomp
print "line 2:"
line2 = $stdin.gets.chomp
print "line 3:"
line3 = $stdin.gets.chomp

puts "I'm going to write the file."

target.write(line1 + line2 + line3)

puts "And finally, we close it."

target.close

