class DreamsController < ApplicationController
  def new
  end

  def index
    @dreams_by_group = Dream.dreams_by_group
    Rails.logger.info @dreams_by_group
  end

  def edit
  end

  def destroy
  end

  def show
  end

end
