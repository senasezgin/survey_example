class FeedbackController < ApplicationController
    def show
        @feedback = feedback.find(params[:id])
        render json: @feedbacks
    end

    
end
