#!/usr/bin/env ruby
require "mysql2"
require_relative "Countries"
require_relative "Continent"
require_relative "Capitals"
require "yaml"


config = YAML::load_file("config/database.yml")["development"]

$client = Mysql2::Client.new(config)
$client.query_options.merge!(:as => :array)	

puts "To find out all of the cities in a Country - Enter cities\n"
puts "To find the capital city - Enter capital\n"
puts "To find the Countries in a Continent - Enter countries\n"
puts "To end this questioning - Enter stop"
input = gets.chomp!
input.downcase!

while input != "stop"
	case
		when input == "cities"
			puts "Enter a Country"
			input2 = gets.chomp
			Country.new.returnCountry(input2)
		when input == "countries"
			puts "Enter a Continent"
			input3 = gets.chomp
			Continents.new.returnContinent(input3)
		when input == "capital"
			puts "Find a capital"
			input4 = gets.chomp
			Capital.new.returnCapital(input4)
		else input == "stop"
				exit()
		end
puts "To find out all of the cities in a Country - Enter cities\n"
puts "To find the capital city - Enter capital\n"
puts "To find the Countries in a Continent - Enter countries\n"
puts "To end this questioning - Enter stop"
input = gets.chomp
input.downcase
end
