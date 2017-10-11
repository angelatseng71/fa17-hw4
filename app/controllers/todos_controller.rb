class TodosController < ApplicationController
	def new
		@todo = Todo.new
		render '/todos/new'
	end
	def create
		if params[:todo][:finished] == 'y' 
			@finished = true
		else 
			@finished = false
		end

		@todo = Todo.create(tasks: params[:todo][:tasks], finished: params[:todo][:finished])
		@todo.save!

		render 'show'
	end
end
