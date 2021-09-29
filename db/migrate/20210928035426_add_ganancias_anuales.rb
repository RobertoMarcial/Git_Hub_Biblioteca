class AddGananciasAnuales < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :ganacias_anuales, :decimal
  end
end
