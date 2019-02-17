class MoviesController < ApplicationController
	def index
		@movies = ["Ironman", "Superman", "Spiderman", "Batman"]
	end
end
