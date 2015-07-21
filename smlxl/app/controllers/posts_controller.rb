class PostsController < ApplicationController

	def show
    @article = Post.find(params[:id])
  end
  def new
  	# @post = Post.new
  end

def create
@post = Post.new(params.require(:post).permit(:title, :text, :tags))
 
  @post.save
  redirect_to @post

end

private
  def post_params
    params.require(:post).permit(:title, :text, :tags)
  end
end