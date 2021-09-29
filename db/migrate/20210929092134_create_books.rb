class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :titulo
      t.string :idioma
      t.integer :paginas
      t.string :descripcion
      t.references :author, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :editorial, null: false, foreign_key: true

      t.timestamps
    end
  end
end
