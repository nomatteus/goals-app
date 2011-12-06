class GoalsController < ApplicationController
  #before_filter :authenticate_user!

  def new
    @goal = Goal.new
  end

  def index
    @goals_focused = Goal.where(:state => "focused")
    @goals_active  = Goal.where(:state => "active")
    @goals_someday = Goal.where(:state => "someday")
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update_attributes(params[:goal])
      flash[:notice] = "Goal has been updated!"
      redirect_to @goal
    else
      flash[:alert] = "Error saving goal"
      render :action => "edit"
    end
  end

  def destroy
  end

  def show
    @goal = Goal.find(params[:id])
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
