class Api::V1::SignsController < ApplicationController
  def index
    @signs = Sign.all
    render json: @signs
  end

  def show
    @sign = Sign.find(params[:id])
    render json: @sign
  end
end
