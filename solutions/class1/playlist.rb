Song = Struct.new(:name, :artist)
playlist = [Song.new("as it was","harry styles"),Song.new("wait a minute","Willow")]

def mostrarcanciones(p) 
	p.each_with_index do |song,idx|
		puts "#{idx} - #{song.name} by #{song.artist}"
	end
end

puts "Hello! What is your name?"
#puts escribe en la pantalla
username = gets.chomp.to_s
puts "Welcome #{username}"
mostrarcanciones(playlist)
