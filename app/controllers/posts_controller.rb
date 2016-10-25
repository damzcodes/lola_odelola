class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def tech_index
    @posts = Post.where(tech: true)
  end

  def poem_index
    @posts = Post.where(poem: true)
  end
end
