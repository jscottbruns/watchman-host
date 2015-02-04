class IncidentsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def show
    @incident = Incident.find(params[:id])
  end

  private

  def incident_params
    params.require(:incident).permit(:incident_no, :call_type, :location, :text)
  end
end
