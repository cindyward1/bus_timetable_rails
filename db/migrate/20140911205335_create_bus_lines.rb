class CreateBusLines < ActiveRecord::Migration
  def change
    create_table :bus_lines do |t|
      t.string :line_name
      t.timestamps
    end
  end
end
