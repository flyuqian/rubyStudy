filename = ARGV.first

prompt = '> '
txt = File.open(filename)

puts "Here's you file: #{filename}" 
puts txt.read()

puts "Type the filename again:"
print prompt
file_agin = STDIN.gets.chomp()

txt_again = File.open(file_agin)
puts txt_again.read()