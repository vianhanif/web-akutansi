class CreateJurnals < ActiveRecord::Migration[5.0]
  def change
    create_table :jurnals do |t|
      t.belongs_to :koleksi_jurnal, foreign_key: true

      t.timestamps
    end
  end
end
