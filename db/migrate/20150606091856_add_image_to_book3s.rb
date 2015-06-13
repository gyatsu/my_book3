class AddImageToBook3s < ActiveRecord::Migration
  def change
    add_column :book3s, :img, :string
  end
end
