class FizzBuzz::ListController < ApplicationController
  def index
    if valid_request?
      @fizz_buzz_list = FizzBuzz.sequence(list_params[:start_at], list_params[:end_at])
    else
      flash[:warning] = 'Not valid inputs'
      redirect_to fizz_buzz_path
    end
  end

  private

  def valid_request?
    list_params[:start_at] < list_params[:end_at]
  end

  def list_params
    params.permit(:start_at, :end_at)
  end
end
