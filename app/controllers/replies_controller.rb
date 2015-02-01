class RepliesController < ApplicationController
	def new
		@post = Post.find(params[:post_id])
		@reply = Reply.new
	end
	def create
		# Refactor!
		@reply = Reply.new(reply_params)
		@post = Post.find(params[:post_id])
		if user_signed_in?
			@reply.email = current_user.email
		end
		ActionMailer::Base.mail(
			:from => @reply.email, 
		  	:to => @post.email,
		  	:subject => "New reply to your post on BerlinBand", 
		  	:body => @reply.message).deliver_now
		redirect_to root_path, notice: "Message successfully sent."
	end

	private
	
	def reply_params
		params.require(:reply).permit(:email, :message)
	end
end