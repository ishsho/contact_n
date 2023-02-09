class ContentsController < ApplicationController

  def index
    @contents = Content.all
  end

  def create
  end

end
