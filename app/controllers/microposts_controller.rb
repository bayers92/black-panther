class MicropostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy, :edit]
  before_action :author_user,    only: [:create, :destroy, :edit]

  def index
    redirect_to root_url
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      if @micropost.publish? 
        flash[:success] = "Post Published!"
        redirect_to "/microposts/"+@micropost.id.to_s
      else
        flash[:success] = "Post Saved!"
        redirect_to request.referer
      end
    else
      render 'static_pages/error'
    end
  end

  def destroy
    Micropost.find(params[:id]).destroy
    flash[:success] = "Post destroyed."
    redirect_to root_url
  end

  def show
    @post = Micropost.find(params[:id])
    @comment = current_user.comments.build if signed_in?
  end

  def new
    @micropost = Micropost.new
  end

  def edit
    @micropost = Micropost.find(params[:id])
  end

  def update
    @micropost = Micropost.find(params[:id])
    if @micropost.update_attributes(micropost_params)
      if @micropost.publish?
        flash[:success] = "Post Updated and Published!"
        redirect_to "/microposts/"+@micropost.id.to_s
      else 
        flash[:success] = "Post Updated and Saved!"
        redirect_to request.referer
      end
    else
      render 'static_pages/error'
    end
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :title, :subtitle, :author, :job, :company, :publish)
    end

    # Before Filters

    def author_user
      redirect_to(root_url) unless current_user.author?
    end
end