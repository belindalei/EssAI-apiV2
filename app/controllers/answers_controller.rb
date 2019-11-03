class AnswersController < ApplicationController
  def index
    answers = Answer.order("created_at DESC")
    render json: answers
  end

  def create
    answer = Answer.create(answer_param)
    render json: answer
  end

  def update
    answer = Answer.find(params[:id])
    answer.update_attributes(answer_param)
    render json: answer
  end

  def destroy
    answer = Answer.find(params[:id])
    answer.destroy
    head :no_content, status: :ok
  end
  
  private
    def answer_param
      params.require(:answer).permit(:paragraph)
    end
end
