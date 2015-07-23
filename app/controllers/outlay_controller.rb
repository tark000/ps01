class OutlayController < ApplicationController

  def new
    @user = current_user
    @outlay_form = Outlay.new


  end


  def create

    Outlay.create(params['outlay'])
    redirect_to action: "index"
  end

end
