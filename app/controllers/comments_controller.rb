class CommentsController < ApplicationController
	before_action :signed_in_user, only: [:create, :destroy]

	def create
		@comment = current_user.comments.build(comment_params)
		if @comment.save
		  flash[:success] = "Suggestion posted!"
		  redirect_to root_url
		else
		  render 'static_pages/error_posting_comment'
		end
	end

	def destroy
		Comment.find(params[:id]).destroy
		flash[:success] = "Comment Deleted."
		redirect_to root_url
	end

	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def increase
		@comment= Comment.find(params[:id])
		@comment.update_attribute("vote", (@comment.vote + 1))
	    if @comment.save
	    	@user = User.find_by id: @comment.author_id
			flash[:success] = "Thanks for voting!"
			redirect_to user_url(@user)+ "?voted_#{@comment.id}"
		else
			render 'static_pages/error_posting_comment'
		end
	end

	private

	def comment_params
	  params.require(:comment).permit(:content, :vote, :user_id, :author_id)
	end

end