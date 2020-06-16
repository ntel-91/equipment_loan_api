class Api::V1::GymsController < ApplicationController

    def create
        gym = Gym.new(
            name: params[:name],
            account_name: params[:accountName],
            password: params[:password],
            address: params[:address],
            city: params[:city],
            state: params[:state],
            zip: params[:zip],
            img: params[:img]
        )

        if gym.save
            token = encode_token(gym.id)
            render json: {user: gym, token: token}
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    
end