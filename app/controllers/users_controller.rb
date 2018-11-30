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
	@user = current_user
	@expense = 0
	@user.cash_flow_ids.each do |cf|
		@expense += CashFlow.find(cf).price_cents
	end
	@user.balance -= @expense
	@user.save

end
def dashboard
   @budgets = current_user.budgets
   @budgets = Budget.where(user_id: current_user.id)
   @user_goal = UserGoal.where({user_id: current_user.id})[0]
end


 def salary_params
    params.require(:user).permit(:salary,:balance)
 end
end
