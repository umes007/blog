class CommentsController < ApplicationController

  def create
    comment = Comment.new(
      commenter: params[:comment][:commenter],
      body: params[:comment][:body],
      article_id: params[:article_id]
    )
    comment.save

    # @article = Article.find(params[:article_id])
    # @comment = @article.comments.create(comment_params)
    redirect_to article_path(comment.article_id)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
