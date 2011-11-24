class GoalsController < ApplicationController
  before_filter :authenticate_user!

  def add
  end

  def index
    @goals = Goal.all
  end

  def edit
  end

  def delete
  end

  def show
  end

end
