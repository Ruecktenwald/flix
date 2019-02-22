require 'rails_helper'

describe do "going to a movie page"

	it "shows the movie details" do

		movie = Movie.create(movie_attributes(total_gross: 300000000.00))

	visit movie_url(movie)


		expect(page).to have_text(movie.title)
		expect(page).to have_text(movie.rating)
		expect(page).to have_text(movie.description)
		expect(page).to have_text(movie.released_on)
	end


	it "shows the total gross if the total gross exceeds $50M" do
		movie = Movie.create(total_gross: 51000000.00)

		visit movie_url(movie)

		expect(page).to have_text("$51,000,000.00")
	end


	it "shows 'Flop!' if the total gross is less than $50M" do

	movie = Movie.create(total_gross: 49000000.00)

		visit movie_url(movie)

		expect(page).to have_text("Flop!")


	end


end