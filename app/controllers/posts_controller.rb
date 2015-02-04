class PostsController < ApplicationController
	before_filter :authenticate_user!, only: [:edit, :update, :destroy]
	before_filter :is_user?, only: [:edit, :update, :destroy]

	def create
		@post = Post.new(post_params)
		if user_signed_in?
			@post.user = current_user
			@post.email = current_user.email
		end
		if  @post.save
			redirect_to @post
		else
			flash[:alert] = @post.errors.full_messages.to_sentence
			render 'new'
		end
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
			@posts = @posts.order(:created_at).reverse_order.paginate(:page => params[:page], :per_page => 12)
	end
	def index_seeking
			@posts = Post.where(post_type: "seeking")
			@posts = @posts.where(category_id: params[:category_id])
			@posts = @posts.order(:created_at).reverse_order.paginate(:page => params[:page], :per_page => 12)
	end
	def show
		@post = Post.find(params[:id])
		@post.increment
	end
	def my_posts
		@posts = Post.where(user: current_user)
		@posts = @posts.order(:created_at).reverse_order.paginate(:page => params[:page], :per_page => 12)
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
		params.require(:post).permit(:title, :description, :category_id, :user_id, :post_type, :link, :location, :email, :terms_of_service, :viewed)
	end
	def is_user?
		@post = Post.find(params[:id])
		unless current_user = @post.user
			redirect_to root_path, alert: "Sorry, you are not authorized to do that."
		end
	end
end