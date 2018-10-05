require "mysql2"

class Capital
	def returnCapital(i)
		result = $client.query("Select name from cities where country = '#{i}' and is_capital = 1.0")
		result.map {|res| res.to_s}
			for i in result do
				i.each{ |pais| puts pais}
			end
	end
end