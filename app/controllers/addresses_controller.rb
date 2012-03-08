class AddressesController < ApplicationController
	def index

		@url = Address.all

		respond_to do |format|
			format.html
			format.json { render json: @url }
		end

	end

	def create
		
		@url = Address.new(:url => params[:url])

		respond_to do |format|
			if @url.save
				format.html
				format.json { render json: @url }
			else
				flash[error] = @url.errors
				render :action => 'index'
			end
		end

	end
end
