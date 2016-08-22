class CreateAkuns < ActiveRecord::Migration[5.0]
  def change
    create_table :akuns do |t|
      t.string :kode
      t.string :nama
      t.references :tipe_akun, foreign_key: true

      t.timestamps
    end
  end
end
