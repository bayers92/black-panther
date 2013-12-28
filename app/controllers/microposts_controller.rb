class MicropostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :author_user,    only: :destroy
  before_action :correct_user,   only: [:create, :destroy]


  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  def show
    @post = Micropost.find(params[:id])
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :title, :subtitle)
    end

    # Before filters

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def author_user
      redirect_to(root_url) unless current_user.author?
    end
end