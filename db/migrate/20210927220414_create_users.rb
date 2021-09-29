class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :telefono
      t.string :direccion
      t.string :observaciones

      t.timestamps
    end
  end
end
