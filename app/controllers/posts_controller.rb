class PostsController < ApplicationController
  def create
  end

  def index
  end
  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      render json: post
    else
      render json: { error: "Failed to update post" }, status: :unprocessable_entity
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    head :no_content
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

end
