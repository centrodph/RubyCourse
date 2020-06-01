dial_book = {
	"newyork" => "212",
	"newbrunswick" => "732",
	"edison" => "908",
	"plainsboro" => "609",
	"sanfrancisco" => "301",
	"miami" => "305",
	"paloalto" => "650",
	"evanston" => "847",
	"orlando" => "407",
	"lancaster" => "717"
}
# Get city names from the hash
def get_city_names(somehash)
	somehash.each { |city, value| puts city.capitalize }
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
	somehash.each { |city, value| return value if city.downcase == key.downcase }
	nil
end

# Execution flow
loop do
	puts "Do you want to lookup an area code based on a city name? (Y/N)"
	input = gets.chomp.downcase
	if input == "n"
		break
	elsif input == "y" 
		puts "Which city do you want the area code for?"
		get_city_names(dial_book)
		puts "Enter your selection :"
		city = gets.chomp.downcase
		code = get_area_code(dial_book, city)
		if code
			puts "The area code for #{city.downcase.capitalize} is #{code}" 
		else
			puts "#{city.downcase.capitalize} not found" 
		end	
	end
end