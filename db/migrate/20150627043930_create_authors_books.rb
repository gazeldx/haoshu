class CreateAuthorsBooks < ActiveRecord::Migration
  def change
    create_table :authors_books do |t|
      t.references :book, index: true
      t.references :author, index: true
    end
  end
end
