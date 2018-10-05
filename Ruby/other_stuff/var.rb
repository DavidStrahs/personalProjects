puts "Enter a number: "

STDOUT.flush
n = gets.chomp
num = n.to_i


def callup(num)
  tot = num * rand(10)
  return tot
end

puts callup(num)
