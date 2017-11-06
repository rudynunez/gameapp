
# creates a variable and assigns it the value of the first argument entered into the command prompt
filename = ARGV.first

# creates variable 'txt'. Gives it the command to open the file named in the first argument
txt = open(filename)

puts "Here's your file, titled, '#{filename}':"

# displays the body of the opened file
print txt.read

print "Type the filename again: "

# creates a variable, 'file_again'. Gives it an open value to be assigned by user
file_again = $stdin.gets.chomp

# names the variable, 'txt_again'. Tells it to open the file assigned to the variable, 'file_again' by the user
txt_again = open(file_again)

# displays the content of the named file
print txt_again.read
