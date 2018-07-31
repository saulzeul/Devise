class TiresController < ApplicationController
  def index
      @tires = Tire.all
      render json: @tires
  end
end
