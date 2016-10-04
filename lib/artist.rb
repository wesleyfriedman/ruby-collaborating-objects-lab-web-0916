class Artist

	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

	def self.new_by_filename
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(artist_name)
		artist = all.find {|artist| artist.name == artist_name}
		artist ? artist : Artist.new(artist_name)
	end

	def add_song(song_object)
		@songs << song_object
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end

	def save
		self.class.all << self
	end

end