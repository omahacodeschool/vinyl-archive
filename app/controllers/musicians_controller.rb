class MusiciansController < ApplicationController
	def index
		@musicians = Musician.all.page(params[:page]).per(3)
	end

	def show
		@musician = Musician.find(params[:id])
		@albums = Album.where(:artist_id => @musician.artist.id)
		@img = Artist.find(@musician.artist_id).url
	end
end
