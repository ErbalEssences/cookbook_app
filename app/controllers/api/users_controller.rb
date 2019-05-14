class Api::UsersController < ApplicationController
  def create
    user = User.new(
                    name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]

                    )
    if user.save
      render json: {message: "user created successfully"}, status: :created
    else
      render json: {error: "user.error.full_messages"}, status: :bad_request
    end
  end
end
