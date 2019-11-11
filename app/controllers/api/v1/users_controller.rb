class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

     def show
        user = User.find(params[:id])
        render json: user
    end
    
    def create
       user = User.create(user_params)
       if ( user.valid?)
        render json: user 
       else
        render :json => { :errors => user.errors.full_messages, :code => 69 }
       end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end
    
  private

  def user_params
      params.permit(:password, :email, :name)
  end

end