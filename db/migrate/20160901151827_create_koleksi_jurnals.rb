class CreateKoleksiJurnals < ActiveRecord::Migration[5.0]
  def change
    create_table :koleksi_jurnals do |t|
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
