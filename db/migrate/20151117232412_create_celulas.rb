class CreateCelulas < ActiveRecord::Migration
  def change
    create_table :celulas do |t|
      t.string :descricao
      t.references :SubEquipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
