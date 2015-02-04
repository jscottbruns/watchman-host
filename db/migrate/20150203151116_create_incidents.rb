class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string  :incident_no, :null => false
      t.string  :call_type, :null => false
      t.string  :location, :null => false
      t.text  :text, :text, :null => false
      t.timestamps
    end
  end
end
