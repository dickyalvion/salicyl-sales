
CREATE TABLE Base_Table AS (
	SELECT
		penjualan.id_distributor,
		penjualan.id_cabang,
		CONCAT(penjualan.id_invoice, '_', penjualan.id_barang) AS id_penjualan,
        penjualan.id_invoice,
		penjualan.id_customer,
        penjualan.tanggal,
        penjualan.id_barang,
		penjualan.jumlah_barang,
		penjualan.unit,
		penjualan.harga,
		penjualan.mata_uang,
		penjualan.brand_id,
		penjualan.lini,
		pelanggan.level,
		pelanggan.nama,
        pelanggan.cabang_sales,
		pelanggan.id_group,
		pelanggan.group,
		barang.kode_barang,
		barang.sektor,
		barang.nama_barang,
		barang.tipe,
		barang.nama_tipe,
		barang.kode_lini,
		barang.kemasan
	FROM penjualan
	LEFT JOIN pelanggan 
		ON penjualan.id_customer = pelanggan.id_customer
	LEFT JOIN barang 
		ON penjualan.id_barang = barang.kode_barang
);

ALTER TABLE Base_Table ADD PRIMARY KEY (id_penjualan(30));

Select *
From base_table;