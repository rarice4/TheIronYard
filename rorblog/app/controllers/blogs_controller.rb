class BlogsController < ApplicationController
  def show
    @blog = Blog.find params[:id]
  end

  def new
    @blog = Blog.new
  end

def create
    @blog = Blog.create paramz
  redirect_to root_path
  end

def edit
   @blog = Blog.find params[:id]
  end

def update
    @blog = Blog.find params[:id]
    @blog.update_attributes paramz
    redirect_to root_path
  end

  def destroy
    @blog = Blog.find params[:id]
    @blog.delete
    redirect_to root_path
  end

private
  def paramz
    params.require(:blog).permit(:title, :post)
  end


end



