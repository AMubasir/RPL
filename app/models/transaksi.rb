class Transaksi < ActiveRecord::Base
  belongs_to :mobil
  belongs_to :pelanggan
  has_one :pengembalian
end
