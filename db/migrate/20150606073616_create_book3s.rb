class CreateBook3s < ActiveRecord::Migration
  def change
    create_table :book3s do |t|
      t.string :bookname
      t.string :author
      t.integer :price
      t.string :publisher
      t.date :date
      t.string :isbn

      t.timestamps null: false
    end
  end
end
