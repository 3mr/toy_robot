class CreateRobots < ActiveRecord::Migration[5.2]
  def change
    create_table :robots do |t|
      t.string :name
      t.integer :x, default: 1
      t.integer :y, default: 1
      t.integer :facing, default: Robot.facings[:north]
    end
  end
end
