class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :nombre
      t.string :nacionalidad
      t.string :idioma

      t.timestamps
    end
  end
end
