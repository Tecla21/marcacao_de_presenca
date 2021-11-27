class AddColumnsTipoDeUtilizadorToUtilizador < ActiveRecord::Migration[5.1]
  def change
    add_column :utilizadores, :tipo_de_utilizador, :integer, default: 0, null: false
  end
end
