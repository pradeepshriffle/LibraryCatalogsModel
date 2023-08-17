class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :booktitle
      t.integer :bookyear
      t.references :author, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :publication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
