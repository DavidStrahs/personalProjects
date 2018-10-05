print "Write something ... here:"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    puts "Ain't no s in this string"
end
