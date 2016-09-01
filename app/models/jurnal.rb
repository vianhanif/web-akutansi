class Jurnal < ApplicationRecord
  belongs_to :koleksi_jurnal
  has_many :male_transaksis
  has_many :female_transaksis
end
