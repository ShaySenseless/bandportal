class StaticPagesController < ApplicationController
	def index
	end
	def contact
	end
	def send_message
		if user_signed_in?
			params[:email] = current_user.email
			params[:name] = current_user.username
		end
		ActionMailer::Base.mail(
			:from => params[:email], 
		  	:to => "shayofer89@gmail.com",
		  	:subject => "New message from #{params[:name]} through contact form", 
		  	:body => params[:message]).deliver_now
		redirect_to root_path, notice: "Thank you for your message, we will get back to you as soon as possible"
	end
end