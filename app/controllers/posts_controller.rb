class PostsController < ApplicationController

    def new 
        @post = Post.new
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def index
        @posts = Post.all
    end

    def create
        @post = Post.create(params.require(:post).permit(:data,:title))
        if @post.save
        redirect_to @post
        else
            render 'new'
        end
    end
end