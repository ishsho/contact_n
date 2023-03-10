class ContentsController < ApplicationController
  before_action :set_content, only: [:new, :create, :edit, :update]
  before_action :set_contents, only: [:edit, :update, :destroy]

  def index
    @content = Content.find(params[:topic_id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to topic_contents_path(@content.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @content.update(content_params)
     redirect_to topic_contents_path(@content.id)
    else
      render :edit
    end
  end 

  def destroy
    @content.destroy
    redirect_to root_path(anchor: 'lists')
  end

  private

  def content_params
    params.require(:content).permit(:title, :text, :image).merge(user_id: current_user.id, topic_id: params[:topic_id])
  end

  def set_content
    @topic = Topic.find(params[:topic_id])
  end

  def set_contents
    @content = Content.find(params[:id])
  end
end
