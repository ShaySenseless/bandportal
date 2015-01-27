class CategoriesController < ApplicationController
	def show
		@posts = Post.where(category_id: params[:id])
	end

	private

	def category_params
		params.require(:category).permit(:name)
	end
end