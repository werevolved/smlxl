class PostsController < ApplicationController
  def new
  	# @post = Post.new
  end

def create
  @article = Post.new(params[:post])
 
  @post.save
  redirect_to @post
end
end