class CreateBorrowings < ActiveRecord::Migration[6.1]
  def change
    create_table :borrowings do |t|
      t.date :fecha_salida
      t.date :fecha_entrada
      t.references :book, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
