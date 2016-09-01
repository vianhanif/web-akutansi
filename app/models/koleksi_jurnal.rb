class KoleksiJurnal < ApplicationRecord
  belongs_to :user
  has_many :jurnals
end
