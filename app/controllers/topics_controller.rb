class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title_name).merge(user_id: current_user.id)
  end

end
