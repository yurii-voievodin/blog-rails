class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    render "posts/about"
  end
  
    # TODO: Add Page model
  # TODO: Should be another page
  def contacts
    @post = Post.find(2)
    render "posts/contacts", :locals => {:post => @post}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end
end
