class CommentsController < ApplicationController


  def index
    comments = Comment.all
    render json: comments
  end

  def create
    comment = Comment.create(comment_params)
    render json:{
      text:comment.text,
      id:comment.id,
      created_at: comment.created_at,
      updated_at: comment.updated_at
    }
    # render json: comment
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end



end
