class CreditsController < ApplicationController
    before_action :set_person

    def index
      respond_to do |format|
        format.html { render partial: 'credits/list', locals: { credits: @person.credits, person: @person }}
      end
    end
  
    private
  
    def set_person
      @person = Person.find(params[:person_id])
    end
end
