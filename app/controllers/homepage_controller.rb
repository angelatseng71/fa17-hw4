class HomepageController < ApplicationController
	def index
		@cats = Cat.all
		@users = User.all 
		@todos = Todo.all

		render 'homepages/index'
	end
end
