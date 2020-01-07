class Dashboard::SnowballController < ApplicationController
  def index
    current_user.update(snowball_amount: params[:amount])
    response = current_user.accounts.snowball(params[:amount])
    render json: response
  end
end
