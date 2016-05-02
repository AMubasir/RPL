# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#transaksi_tanggal_sewa').datepicker()
	$('#transaksi_tanggal_kembali').datepicker()

jQuery ->
	bukus = $('#transaksi_mobil_id').html()
	$('#transaksi_id').change ->
		jenis_mobil = $('#transaksi_id :selected').text()
		options = $(bukus).filter("optgroup[label='#{jenis_mobil}']").html()
		if options
			$('#transaksi_mobil_id').html(options)
		else
			$('#transaksi_mobil_id').empty()