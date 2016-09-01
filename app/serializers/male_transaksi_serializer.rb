class MaleTransaksiSerializer < ActiveModel::Serializer
  attributes :id, :deskripsi, :nominal
  has_one :akun
  has_one :tipe_relasi
  has_one :jurnal
end
