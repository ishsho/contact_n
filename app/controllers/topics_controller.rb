class TopicsController < ApplicationController
  before_action :set_topic, only: [:edit, :update, :destroy]
  before_action :set_content, only: [:index, :create]

  def index
    @topics = Topic.includes(:user).order(:title_name)
    @topic = Topic.new
    @room = Room.find_by(params[:room_id])
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
  end

  def update
    if @topic.update(topic_params)
      redirect_to root_path(anchor: 'lists')
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to root_path(anchor: 'lists')
  end

  private

  def topic_params
    params.require(:topic).permit(:title_name).merge(user_id: current_user.id)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def set_content
    @content = Content.includes(:user, :topic).order("updated_at DESC")
  end
end
