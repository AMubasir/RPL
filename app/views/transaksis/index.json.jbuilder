json.array!(@transaksis) do |transaksi|
  json.extract! transaksi, :id, :tanggal_sewa, :tanggal_kembali, :lama, :uang_muka, :mobil_id, :pelanggan_id
  json.url transaksi_url(transaksi, format: :json)
end
