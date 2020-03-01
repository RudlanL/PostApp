class PostsController < ApplicationController
    before_action :authenticate_user!, :only => [:new, :create, :edit,:update, :destroy]
    before_action :correct_user, only: [:edit, :update, :destroy]

    def correct_user
        @post = Post.find_by(id: params[:id])
        unless @post.user == current_user
            redirect_to action: "index"
        end
    end

    def index 
        @posts = Post.order(updated_at: :desc)
    end
    def show
        @post = Post.find(params[:id])  
    end

    def new
        @post = Post.new
    end
    def create
        @post = Post.new(params.require(:post).permit(:title,:standfirst,:image,:article))
        @post.user_id = current_user.id
        if @post.save
            redirect_to action: "index"
        end
    end
    def edit
        @post = Post.find(params[:id])
    end
    def update
        if @post.update(params.require(:post).permit(:title,:standfirst,:image,:article))
            redirect_to action: "index"
        end
    end
    def destroy
        @user = User.find(params[:user_id])
        @user.posts.destroy(Post.find(params[:id]))
        redirect_to action: "index"
    end

end
