class CreateTipeRelasis < ActiveRecord::Migration[5.0]
  def change
    create_table :tipe_relasis do |t|
      t.string :nama

      t.timestamps
    end
  end
end
