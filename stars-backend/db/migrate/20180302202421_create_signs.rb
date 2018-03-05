class CreateSigns < ActiveRecord::Migration[5.1]
  def change
    create_table :signs do |t|
      t.string :name
      t.date :start
      t.date :end
      t.string :description

      t.timestamps
    end
  end
end
