class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.string :name
      t.string :date
      t.integer :number

      t.timestamps
    end
  end
end
