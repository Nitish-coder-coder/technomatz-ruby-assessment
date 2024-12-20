module Api
  module V1
    class SendLoginUrlController < ApplicationController

      def send_url_login
        email = params[:email]
        user = User.find_by(email: email)
        url = "localhost:3000/users/sign_in"

        if user.present? && url.present?
          # Send the email using the UserMailer
          UserMailer.send_url(email, url).deliver_now
          render json: { message: 'Email sent successfully' }, status: :ok
        else
          render json: { error: 'Missing required parameters' }, status: :unprocessable_entity
        end
      end

    end
  end
end
