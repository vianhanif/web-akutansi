class JurnalSerializer < ActiveModel::Serializer
  attributes :id, :deskripsi, :saldo
  has_one :akun
end
