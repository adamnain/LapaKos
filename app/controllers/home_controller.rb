class HomeController < ApplicationController
	def index
		@kosts = Kost.all
		if params[:search]
			@kosts = Kost.search(params[:search])
		end
	end
end
