require "mysql2"

class Continents
	def returnContinent(i)
		result = $client.query("Select name from countries where continent = '#{i}'")
		puts "The following countries are located on #{i}: \n"
		result.map {|res| res.to_s}
			for i in result do 
				i.each{ |pais| puts pais}
			end
	end
end