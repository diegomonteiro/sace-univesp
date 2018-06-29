class CreateRainRules < ActiveRecord::Migration[5.1]
  def change
    create_table :rain_rules do |t|
      t.text :station
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :without_expiration
      t.string :operation
      t.float :reference_value
      t.float :range_value_ini
      t.float :range_value_end
      t.string :nickname
      t.text :description
      t.boolean :enable

      t.timestamps
    end
  end
end
