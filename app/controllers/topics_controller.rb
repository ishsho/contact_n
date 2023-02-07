class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    @topic = Topic.new
  end

  def create
    @topics = Topic.all
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to root_path(anchor: 'lists')
    else
      render :index
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      redirect_to root_path(anchor: 'lists')
    else
      render :edit
    end

  end


  private

  def topic_params
    params.require(:topic).permit(:title_name).merge(user_id: current_user.id)
  end

end
