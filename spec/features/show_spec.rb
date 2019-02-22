require 'rails_helper'

describe do "going to a movie page"

	it "shows the movie details" do

		movie = Movie.create(
				title: "Catwoman",
				rating: "R",
				description: "She wears a lot of leather as she steals diamonds.",
				released_on: "2019-01-20",
				total_gross: "300550000.00")

	visit movie_url(movie)


		expect(page).to have_text(movie.title)
		expect(page).to have_text(movie.rating)
		expect(page).to have_text(movie.description)
		expect(page).to have_text(movie.released_on)
		expect(page).to have_text("$300,550,000.00")
	end
end