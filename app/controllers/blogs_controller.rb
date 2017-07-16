class BlogsController < ApplicationController

  def create
  end

  def create_post
  	title = params[:title]
    content = params[:content]
    current_user.blogs.create(title: title,content:content)
    return redirect_to '/'
  end

def show
  @blogs = Blog.all
end


end