class GoalsController < ApplicationController
before_action :set_goal


 private
  def goal_params
    params.require(:goal).permit(:name, :image_goal )
  end

    def set_goal
      @goal = Goal.find(params[:id])
    end


end
