class ContentsController < ApplicationController

  def index
    @content = Content.find(params[:topic_id])
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
    @content = Content.find(params[:id])
    @topic = Topic.find(params[:topic_id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update(content_params)
      redirect_to topic_contents_path(@content.id)
    end
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to root_path(anchor: 'lists')
  end
  
  private

  def content_params
    params.require(:content).permit(:title, :text).merge(user_id: current_user.id, topic_id: params[:topic_id])
  end

end
