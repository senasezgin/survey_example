class SurveysController < ApplicationController
    def show
        @survey = Survey.find(params[:id])
        render json: @survey
    end
    
    def index
        @surveys = Survey.all
    end
    
end
