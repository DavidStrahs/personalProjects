require "mysql2"

class Country
	def returnCountry(i)
		result = $client.query("Select name from cities where country = '#{i}'")
		result.map {|res| res.to_s}
			for i in result do
				i.each{ |pais| puts pais}
			end
	end
end
