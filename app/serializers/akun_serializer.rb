class AkunSerializer < ActiveModel::Serializer
  attributes :id, :kode, :nama
  has_one :tipe_akun
  has_one :user
end
