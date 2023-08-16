module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        @greetings = Message.all

        render json: @greetings
      end

      def random
        @random_message = Message.all.sample
        render json: @random_message, status: :ok
      end
    end
  end
end
