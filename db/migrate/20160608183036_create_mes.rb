class CreateMes < ActiveRecord::Migration
  def change
    create_table :mes do |t|
      t.text :description
      t.string :name

      t.timestamps null: false
    end
  end
end
