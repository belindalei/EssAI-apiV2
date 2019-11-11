class Api::V1::ResponsesController < ApplicationController
  def index
    responses = Response.all
    render json: responses
  end

  def show
    response = Response.find(params[:id])
    render json: response
  end

  def update
    response = Response.find(params[:id])
    response.update(response_params)
    render json: response
  end

  def create
    response = Response.new(response_params)
    if response.save
        user = User.find_by(email: params[:email])
        essay = Essay.create!(title: response.id) if user
        render json: {response: response, essay: essay}
    else
        render json: {errors: response.errors.full_messages}
    end
  end

  private

  def response_params
      params.require(:response).permit(:paragraph, :user_id, :essay_id, :saved)
  end

end
