class AwardsController < ApplicationController
    before_action :set_person

    def index
      respond_to do |format|
        format.html { render pertial: 'awards/list', locals: { awards: @person.awards, person: @person }}
      end
    end

    private
    def set_person
      @person = Person.find(params[:person_id])
    end
end
