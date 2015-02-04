class Post < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	validates_presence_of :title, :description, :post_type, :category_id, :email
	validates :terms_of_service, acceptance: true
	validates :title, length: { maximum: 80,
		      too_long: "%{count} characters is the maximum allowed" }
	def increment
		update_attribute(:viewed, viewed + 1)
	end
end