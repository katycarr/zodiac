class RemoveBirthdayFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :birthday, :string
  end
end
