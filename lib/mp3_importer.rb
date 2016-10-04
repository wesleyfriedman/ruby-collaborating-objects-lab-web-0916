require 'pry'
class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
		@files = []
		import
	end

	def files
		@files
	end

	def import
		Dir["#{@path}/*"].each do |song|
			Song.new_by_filename(song.split("/").last)
			@files << song.split("/").last
		end
	end

end