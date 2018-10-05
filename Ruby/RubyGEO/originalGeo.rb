require "mysql2"
require "yaml"

config = YAML::load_file("config/database.yml")["development"]

client = Mysql2::Client.new(config)
client.query_options.merge!(:as => :array)

puts "To get the corresponding cities ask for a Country ... enter a country. To end enter stop"
input = gets.chomp

while input != "stop"

	result = client.query("Select name from geography.cities where country = '#{input}'")
		resu = result.to_a
		resu.map {|res| res.to_s}
			for i in resu do
				i.each{|pais| puts pais}
			end
	puts "To get the corresponding cities ask for a Country ... enter a country. To end enter stop"
	input = gets.chomp
end
