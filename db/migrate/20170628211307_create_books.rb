class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :author_name
      t.date :published
      t.float :rating
      t.integer :pages
      t.text :description
      t.string :publisher
      t.string :image
      t.text :review
      t.string :reviewer
      t.string :amazon_link
      t.timestamp :date_added

      t.timestamps
    end
  end
end
