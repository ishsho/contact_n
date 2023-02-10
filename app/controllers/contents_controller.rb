class ContentsController < ApplicationController

  def index
    @content = Content.find(params[:topic_id])
    @topics = Topic.includes(:user)
  end

  def new
    @content = Content.new
    @topic = Topic.find(params[:topic_id])
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @content = Content.new(content_params)
    if @content.save
      redirect_to root_path(anchor: 'lists')
    else
      render :new
    end
  end

  def edit
    @content = Content.find(params[:topic_id])
    @topic = Topic.find(params[:topic_id])
  end
  
  private

  def content_params
    params.require(:content).permit(:title, :text).merge(user_id: current_user.id, topic_id: params[:topic_id])
  end

end
