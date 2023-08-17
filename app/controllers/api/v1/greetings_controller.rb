module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        @messages = Message.all

        render json: @messages
      end

      def random
        @random_message = Message.all.sample
        render json: @random_message, status: :ok
      end
    end
  end
end
