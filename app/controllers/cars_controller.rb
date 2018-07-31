class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def new
    @cars = Car.new
  end
end
