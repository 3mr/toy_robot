class CreateRobots < ActiveRecord::Migration[5.2]
  def change
    create_table :robots do |t|
      t.string :name
      t.integer :x, default: 0
      t.integer :y, default: 0
      t.integer :facing, default: Robot.facings[:north]
    end
  end
end
