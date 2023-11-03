
CREATE TABLE Aggregate_Table AS (
	SELECT
		id_penjualan,
        id_customer,
        nama as customer,
        id_distributor,
        tanggal,
		brand_id,
        lini as brand,
        nama_barang,
        kemasan,
        id_cabang,
        cabang_sales as kota_sales,
        jumlah_barang,
        harga,
        AVG(harga) AS rata_rata_harga,
		SUM(jumlah_barang) AS total_barang_terjual,
        SUM(jumlah_barang*harga) AS total_penjualan
	FROM Base_Table
    GROUP BY 
		id_penjualan,
        id_customer,
        customer,
        id_distributor,
        tanggal,
		brand_id,
        brand,
        nama_barang,
        kemasan,
        id_cabang,
        kota_sales,
        harga
);
ALTER TABLE rakamin.aggregate_table MODIFY COLUMN total_penjualan float;

Select *
From aggregate_table;