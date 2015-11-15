class EntrantsController < ApplicationController
	def new
		@entrant = Entrant.new
	end

	def create
		@entrant= Entrant.new(params[:entrant])
		@entrant.request = request
		if @entrant.deliver
			flash.now[:error] = nil
			flash.now[:notice] = 'Thank you for your registering!'
		else
			flash.now[:error] = 'Cannot process registration.'
			render :new
		end
	end
end
