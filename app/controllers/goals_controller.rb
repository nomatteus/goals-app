class GoalsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @goal = Goal.new
  end

  def index
    @goals_focused = Goal.where(:state => "focused").order("`order`")
    @goals_active  = Goal.where(:state => "active").order("`order`")
    @goals_someday = Goal.where(:state => "someday").order("`order`")
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

  def update_order
    goals = params[:goals]
    respond_to do |format|
      format.js {
        goals.each_with_index do |goal_id, i| 
          g = Goal.find(goal_id)
          if g.can_edit? current_user
            g.update_attributes({order: i + 1})
          end
        end
        render :nothing => true, :status => 200
      }
    end
  end

end
