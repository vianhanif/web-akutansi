class CreateTipeAkuns < ActiveRecord::Migration[5.0]
  def change
    create_table :tipe_akuns do |t|
      t.string :nama

      t.timestamps
    end
  end
end
