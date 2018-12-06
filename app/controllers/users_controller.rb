class UsersController < ApplicationController



	 def salary
	    # @user.salary = current_user.salary
	    @user = current_user
	 end

	 def save_salary
	    @user = current_user

		@user.update(salary_params)
		@user.balance = @user.salary
		@user.save!
		redirect_to balance_path

	end

	def balance
	    @budget = Budget.new
      @user = current_user
	end

	def dashboard
	   @budgets = current_user.budgets
	   @budgets = Budget.where(user_id: current_user.id)
	   @user_goal = UserGoal.where({user_id: current_user.id})[0]
	   @goal = Goal.find(@user_goal.goal_id)

     @goal_percent = ((current_user.balance.to_f / @user_goal.amount_cents.to_f)* 100)
     @giphy_url = generate_giphy_url(@goal_percent)
	end

def generate_giphy_url(goal_percent)
  @goal_percent = goal_percent
  #if goal_percent < 50% -- sad gif
  if goal_percent < 30
    @response = Giphy.random('where is my money')
    return @response.image_url

  elsif goal_percent < 70 && goal_percent > 30
    @response = Giphy.random('rich')
    return @response.image_url

  else
    #else happy gif
    @response = Giphy.random('make it rain')
    return @response.image_url
  end
end


private




	 def salary_params
	    params.require(:user).permit(:salary,:balance)
	 end
end
