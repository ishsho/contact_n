class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    @topic = Topic.new
  end

  def create
    Topic.create(topic_params)
  end

  private

  def topic_params
    params.require(:topic).permit(:topic_title)
  end

end
