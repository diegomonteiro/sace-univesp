class CreateRainData < ActiveRecord::Migration[5.1]
  def change
    create_table :rain_data do |t|
      t.string :station
      t.datetime :date
      t.float :rain
      t.string :source_data
      t.string :source_data_url

      t.timestamps
    end
  end
end
