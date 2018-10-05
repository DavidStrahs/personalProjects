puts "Write Something secret:"
text = gets.chomp
puts "Maybe you want to take some of that back?:"
redact = gets.chomp
words = text.split(" ")

words.each do |x|
    if x == redact
        print "REDACTED "
    else
        print x + " "
    end
end
