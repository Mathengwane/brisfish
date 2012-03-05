class AddressesController < ApplicationController
	def index

		@url = Address.all
		puts "++++index-->#{@url}+++++"

		respond_to do |format|
			format.html
			format.js { render js: @url }
		end

	end

	def create
		puts "====create-->#{params[:url]}===="
		
		@url = Address.new(:url => params[:url])

		puts "+++#{@url.url}+++++"
		respond_to do |format|
			if @url.save
				format.html
				format.json { render json: @url }
				#format.js {render :locals => { url => @url}} 
			else
				flash[error] = @url.errors
				render :action => 'index'
			end
		end

	end
end
