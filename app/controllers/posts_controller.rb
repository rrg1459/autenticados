class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
 
  def index
    @posts = Post.order('created_at DESC')
  end
 
  def show
  end
 
  def new
    @post = Post.new
  end
 
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: 'Se creo el producto correctamente'
    else
      render :new
    end
  end
 
  def edit
  end
 
  def update
    if @post.update_attributes(post_params)
      redirect_to post_path(@post), notice: 'Se actualizo el producto correctamente'
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      mensaje = 'Se borro correctamente el producto'
    else
      mensaje = 'Se presento un problema al tratar de borrar este producto'
    end
    redirect_to root_url, notice: mensaje
  end

  private
 
  def post_params
    params.require(:post).permit(:title, :body, :image, :remove_image, attachments: [])
  end
 
  def set_post
    @post = Post.find(params[:id])
  end
end