# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jenis_mobil = JenisMobil.create(jenis: 'Sedan')
jenis_mobil = JenisMobil.create(jenis: 'Kijang')
jenis_mobil = JenisMobil.create(jenis: 'Carry')
jenis_mobil = JenisMobil.create(jenis: 'Minibus')

mobils = Mobil.create(nama: "Honda",
					  warna: "Biru",
					  no_polisi: "Z 009 ED",
					  harga: "300000",
					  keterangan: true,
					  jenis_mobil_id: "1")

pelanggans = Pelanggan.create(nama: "As",
							  alamat: "Tarogong",
							  jenis_kelamin: "Laki-laki",
							  no_telp: "098767382")