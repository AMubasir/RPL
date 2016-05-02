json.array!(@mobils) do |mobil|
  json.extract! mobil, :id, :nama, :warna, :no_polisi, :harga, :keterangan, :jenis_mobil_id
  json.url mobil_url(mobil, format: :json)
end
