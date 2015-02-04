class Api::IncidentsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    @incident = Incident.new(incident_params)

    if @incident.save
      respond_to do |format|
        format.json { render :json => @incident }
      end
    end
  end

  private

  def incident_params
    params.require(:incident).permit(:incident_no, :call_type, :location, :text)
  end
end
