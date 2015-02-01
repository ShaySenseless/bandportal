class Post < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	validates_presence_of :title, :description, :post_type, :category_id, :email
end