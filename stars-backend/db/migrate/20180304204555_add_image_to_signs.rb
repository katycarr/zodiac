class AddImageToSigns < ActiveRecord::Migration[5.1]
  def change
    add_column :signs, :img_url, :string
  end
end
