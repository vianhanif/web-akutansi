class CreateJurnals < ActiveRecord::Migration[5.0]
  def change
    create_table :jurnals do |t|
      t.references :akun, foreign_key: true
      t.text :deskripsi
      t.integer :saldo

      t.timestamps
    end
  end
end
