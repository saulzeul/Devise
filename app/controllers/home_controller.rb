class HomeController < ApplicationController
  def index
    @names =
      {
        :name => "Saul",
        :lastname => "Espinoza"
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
