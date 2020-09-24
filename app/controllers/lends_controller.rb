class LendsController < ApplicationController
   def new
      @lend = Lend.new
   end
  
  def index
    @lends = Lend.all
  end

  def create
    @lend = Lend.new(lend_params)
    if @lend.save
      binding.pry
      redirect_to root_path
    else
      render :new
    end
  end

 private
 def lend_params
  params.require(:lend).permit(:start_year_id,:start_month_id,:start_day_id,:start_time_id,:start_minutes_id,:finish_time_id,:finish_minutes_id,:hourly_pay ).merge(user_id: current_user.id)
 end

end