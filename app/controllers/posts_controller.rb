class PostsController < ApplicationController

  def tech_index
    # @posts = Post.where(tech: true).paginate(:page => params[:page], :per_page => 30).order(created_at: :desc)
    @posts = Post.where(tech: true).order(created_at: :desc)
  end

  def tech
    @post = Post.where(tech: true).find(params[:id])
  end

  def poetry_index
    # @posts = Post.where(poem: true).paginate(:page => params[:page], :per_page => 30).order(created_at: :desc)
    @posts = Post.where(poem: true).order(created_at: :desc)
  end

  def poem
    @poem = Post.where(poem: true).find(params[:id])
  end
end
