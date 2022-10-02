class HomeController < ApplicationController
  def index
    total = Transaction.where(user_id: current_user)
    @sum_trans = total.where(user_id: current_user).sum(:amount)
    @current_balance = current_user.balance - @sum_trans
  end

  def about
  end
  
end
