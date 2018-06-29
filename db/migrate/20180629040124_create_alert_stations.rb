class CreateAlertStations < ActiveRecord::Migration[5.1]
  def change
    create_table :alert_stations do |t|
      t.string :station
      t.string :alert_status
      t.datetime :date
      t.text :description
      t.text :region
      t.string :severity
      t.text :coordinates
      t.boolean :verified
      t.string :verified_for_user

      t.timestamps
    end
  end
end
