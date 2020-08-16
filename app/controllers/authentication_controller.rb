class AuthenticationController < ApplicationController
    def login
        @user = User.find_by username: params[:username]

        if !@user
            render json: {error: "Wrong username. Try again"}, status: :unauthorized
        else
            if !@user.authenticate params[:password]
                render json: {error: "Wrong password. Try again"}, status: :unauthorized
            else
                payload = {
                    user_id: @user.id
                }
                secret = Rails.application.secret_key_base
                token = JWT.encode payload, secret
                render json: {message: "Woohoo!"}
            end
        end
    end
end
