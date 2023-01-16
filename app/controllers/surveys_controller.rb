class SurveysController < ApplicationController
    def create
        @survey = Survey.create(survey_params) 
        @survey.save
        render json: @survey
    end
    
    def survey_params         #Fonkisyon oluşturdum parametre name almak için
        params.permit(name:)
    end
    

    def index
        @surveys = Survey.all
        render json: @survey
    end
    
    
end
