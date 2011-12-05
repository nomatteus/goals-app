class GoalsController < ApplicationController
  #before_filter :authenticate_user!

  def new
  end

  def index
    @goals_focused = Goal.where(:state => "focused")
    @goals_active  = Goal.where(:state => "active")
    @goals_someday = Goal.where(:state => "someday")
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def create
    @goal = Goal.new(params[:goal])

    respond_to do |format|
      if @goal.save
        format.html { redirect_to(@goal, :notice => 'Goal was created!') }
      else
        format.html { render :action => "new" }
      end
    end
  end

end
