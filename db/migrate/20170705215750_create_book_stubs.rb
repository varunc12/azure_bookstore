class CreateBookStubs < ActiveRecord::Migration[5.1]
  def change
    create_table :book_stubs do |t|

      t.timestamps
    end
  end
end
