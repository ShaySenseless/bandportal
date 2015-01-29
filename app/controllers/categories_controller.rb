class CategoriesController < ApplicationController
	def show
		@posts = Post.where(category_id: params[:id])
		@posts = @posts.order(:created_at).reverse_order.paginate(:page => params[:page], :per_page => 12)
	end

	private

	def category_params
		params.require(:category).permit(:name)
	end
end