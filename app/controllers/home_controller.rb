class HomeController < ApplicationController
  def index
    @userDates =
    {
      :name => current_user.name ,
      :email => current_user.email ,
      :lastSign => current_user.last_sign_in_at
    }
  end

  def json
    @names =
      {
        :name => "Saul",
        :lastname => "Espinoza"
      }
    render :json => @names
  end
end
