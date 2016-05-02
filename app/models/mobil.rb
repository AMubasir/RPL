class Mobil < ActiveRecord::Base
  belongs_to :jenis_mobil

  has_many :transaksis
end
