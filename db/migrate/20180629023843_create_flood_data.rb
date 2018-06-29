class CreateFloodData < ActiveRecord::Migration[5.1]
  def change
    create_table :flood_data do |t|
      t.string :station
      t.datetime :date
      t.float :level
      t.float :flow_rate
      t.string :source_data
      t.string :source_data_url

      t.timestamps
    end
  end
end
