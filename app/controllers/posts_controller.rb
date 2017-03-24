class PostsController < ApplicationController

  def tech_index
    @posts = Post.where(tech: true).page(params[:page]).order(created_at: :desc)
    # @posts = Post.where(tech: true).order(created_at: :desc)
  end

  def poetry_index
    @posts = Post.where(poem: true).page(params[:page]).order(created_at: :desc)
    # @posts = Post.where(poem: true).order(created_at: :desc)
  end

  def tech
    @post = Post.where(tech: true).find(params[:id])
  end

  def poem
    @poem = Post.where(poem: true).find(params[:id])
  end
end
