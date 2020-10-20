class PostsController < ApplicationController

  def index
    @posts = Post.all #全てのレコードを@postsに代入
  end

  def new
  end

  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }
  end

end
