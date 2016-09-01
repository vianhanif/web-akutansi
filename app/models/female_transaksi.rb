class FemaleTransaksi < ApplicationRecord
  belongs_to :akun
  belongs_to :tipe_relasi
  belongs_to :jurnal
end
