json.array!(@pengembalians) do |pengembalian|
  json.extract! pengembalian, :id, :transaksi_id, :telat, :denda, :keterangan
  json.url pengembalian_url(pengembalian, format: :json)
end
