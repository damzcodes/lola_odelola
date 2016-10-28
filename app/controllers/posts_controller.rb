class PostsController < ApplicationController

  def tech_index
    @posts = Post.where(tech: true)
  end

  def tech
    @post = Post.where(tech: true).find(params[:id])
  end

  def poetry_index
    @posts = Post.where(poem: true)
  end

  def poem
    @poem = Post.where(poem: true).find(params[:id])
  end
end
