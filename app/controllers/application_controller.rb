class ApplicationController < ActionController::API
    def authenticate
        begin
            header = request.headers["Authorization"]
            token = header.split(" ")[1]
            secret = Rails.application.secret_key_base
            payload = JWT.decode(token, secret)[0]
        rescue
            render json: {error: "Must be logged in to access"}
        end
    end
end
