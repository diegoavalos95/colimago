class PlacesController < ApplicationController
	def index
		@places = Place.all
	end

	def show
		@place = Place.find(params[:id])
	end

	def new
	end

	def create
		@place = Place.new(place_params)

		@place.save
		redirect_to :action => 'index'
	end

	private
		def place_params
			params.require(:place).permit(:name, :coordinates, :keywords)
		end
end
