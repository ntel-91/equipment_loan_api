class Api::V1::AuthController < ApplicationController

    def login
        
        user = Gym.find_by(account_name: params[:accountName])
        
        if user && user.authenticate(params[:password])
              
            token = encode_token(user.id)
            # user should be UserSerializer.new(user) instaed of just user -- look up?
            render json: {user: user, token: token}
            
        else
            render json: {errors: "Not found. Try again."}
        end
    end


end