class MicropostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]


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
      params.require(:micropost).permit(:content, :title, :subtitle, :author, :job, :company)
    end
end