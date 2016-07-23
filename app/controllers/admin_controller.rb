class AdminController < ApplicationController
	def index
		@course = Course.new
	end
end
