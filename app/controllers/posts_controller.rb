class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :json

  # GET /posts
  def index
    render :json => Post.all
  end

  # GET /posts/1
  def show
    render :json => @post
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render :json => @post, :status => :created

    else
      render :json => @post.errors, :status => :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render :json => @post, :status => :ok

    else
      render :json => @post.errors, :status => :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    render :json => nil, :status => :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:details)
    end
end
