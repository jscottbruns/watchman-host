class Incident < ActiveRecord::Base
  validates :incident_no, :call_type, :location, :presence => true
end
