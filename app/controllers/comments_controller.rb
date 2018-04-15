class CommentsController < ApplicationController
  def index
  	@comment= Comment.all
  end

  def create
  	@comment = Comment.create(comment_params)
    # render json: @comment
    respond_to	do |format|
    	#format.html
    	format.js
    end 
  end

   private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
