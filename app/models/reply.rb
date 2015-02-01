class Reply < ActiveRecord::Base
	validates_presence_of :email, :message
end