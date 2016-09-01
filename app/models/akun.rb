class Akun < ApplicationRecord
  belongs_to :tipe_akun
  belongs_to :user
end
