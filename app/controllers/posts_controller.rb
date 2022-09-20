class PostsController < ApplicationController
    def index
        user_id = params[:user_id]
        puts user_id
        @posts = Post.all unless Post.all.empty?
    end
  
    def show
      @post_by_id = Post.find_by(id: params[:id])
    end
  end