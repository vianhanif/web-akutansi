class CreateFemaleTransaksis < ActiveRecord::Migration[5.0]
  def change
    create_table :female_transaksis do |t|
      t.references :akun, foreign_key: true
      t.text :deskripsi
      t.decimal :nominal
      t.references :tipe_relasi, foreign_key: true
      t.belongs_to :jurnal, foreign_key: true

      t.timestamps
    end
  end
end
