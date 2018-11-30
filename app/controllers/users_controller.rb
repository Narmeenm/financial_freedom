class UsersController < ApplicationController

 def salary
    # @user.salary = current_user.salary
    @user = current_user
 end
def save_salary
    @user = current_user

	@user.update(salary_params)
	redirect_to dashboard_path

end

def balance
user = current.user
end
def dashboard
   @budgets = current_user.budgets
   @budgets = Budget.where(user_id: current_user.id)
end


 def salary_params
    params.require(:user).permit(:salary,:balance)
 end
end
