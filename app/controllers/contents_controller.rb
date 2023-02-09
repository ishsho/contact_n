class ContentsController < ApplicationController

  def new
    @contents = Content.all
  end

  def create
    @content = Content.new(topic_params)
    if @content.save
      redirect_to root_path(anchor: 'lists')
    else
      render :index
    end
  end
  
  private

  def topic_params
    params.require(:content).permit(:title, :text).merge(user_id: current_user.id, topic_id: params[:topic_id])
  end

end
