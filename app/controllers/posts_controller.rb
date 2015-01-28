class PostsController < ApplicationController
	before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
	before_filter :is_user?, only: [:edit, :update, :destroy]

	def create
		@post = Post.new(post_params)
		@post.user = current_user
		@post.save
		redirect_to @post
	end
	def new
		@post = Post.new
	end

	def index
		# refactor index hack!!!!!!!!!!!!
	end
	def index_wanted
			@posts = Post.where(post_type: "wanted")
			@posts = @posts.where(category_id: params[:category_id])
	end
	def index_seeking
			@posts = Post.where(post_type: "seeking")
			@posts = @posts.where(category_id: params[:category_id])	
	end
	def show
		@post = Post.find(params[:id])
	end
	def my_posts
		@posts = Post.where(user: current_user)
	end

	def edit
	end
	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		redirect_to @post
	end


	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to root_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :description, :country, :city, :state, :zipcode, :category_id, :user_id, :post_type, :link, :location)
	end

	def is_user?
		@post = Post.find(params[:id])
		unless current_user = @post.user_id
			redirect_to root_path, alert: "Sorry, you are not authorized to do that."
		end
	end
end