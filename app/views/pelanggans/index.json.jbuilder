json.array!(@pelanggans) do |pelanggan|
  json.extract! pelanggan, :id, :nama, :alamat, :jenis_kelamin, :no_telp
  json.url pelanggan_url(pelanggan, format: :json)
end
