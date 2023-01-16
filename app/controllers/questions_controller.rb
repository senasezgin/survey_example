class QuestionsController < ApplicationController
    def index
    
    end
  
    def show
        set_question
    
    end
  
    
    def create
        @questions = questions.create(questions_params) 
        @survey.save
        render json: @survey
    end
    def questions_params         
        params.permit(title:)
    end

    private

    def set_question
        @question = question.find(params[:id])
    end

    end
  
end
