class PostsController < ApplicationController
	before_filter :authorise
	
	def create
		@tradesperson = Tradesperson.find params[:tradesperson_id]
		@post = @tradesperson.posts.create params[:post]
		@post.customer_id = @current_customer.id
		@post.save
		
		respond_to do |format|
			format.html{redirect_to @tradesperson}
			format.js
		end
	end
	
	def destroy
		@tradesperson = Tradesperson.find(params[:movie_id])
		@post = Post.find(params[:id])
		@post.destroy
		
		respond_to do |format|
			format.html {redirect_to @tradesperson}
		end
	end
end
