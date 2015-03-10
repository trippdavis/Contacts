class CommentsController < ApplicationController

  def index
    @commentable = find_commentable
    @comments = @commentable.comments

    render json: @comments
  end

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment].permit(:commentable_id, :commentable_type, :body))
    if @comment.save
      render json: @comment
    else
      render( json: @user.errors.full_messages, status: :unprocessable_entity)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json: @comment
  end

  private

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
