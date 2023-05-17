-- SOAL NOMOR 1

SELECT p.id_barang, b.nama_barang, SUM(p.qty) AS total_qty
FROM tbl_penjualan AS p
JOIN tbl_barang AS b ON p.id_barang = b.id_barang
WHERE YEAR(p.tgl_transaksi) = 2023
GROUP BY p.id_barang, b.nama_barang
ORDER BY total_qty DESC LIMIT 1

-- SOAL NOMOR 2
SELECT p.id_karyawan, k.nama_karyawan, SUM(p.qty * b.harga_barang) AS total_harga
FROM tbl_penjualan AS p
JOIN tbl_barang AS b ON p.id_barang = b.id_barang
JOIN tbl_karyawan AS k ON p.id_karyawan = k.id_karyawan
WHERE YEAR(p.tgl_transaksi) = 2023
GROUP BY p.id_karyawan, k.nama_karyawan
ORDER BY total_harga DESC

-- SOAL NOMOR 3
SELECT YEAR(tgl_transaksi) AS tahun, SUM(qty * harga_barang) AS total_harga
FROM tbl_penjualan AS p
JOIN tbl_barang AS b ON p.id_barang = b.id_barang
GROUP BY YEAR(tgl_transaksi)
ORDER BY tahun ASC;

-- SOAL NOMOR 4
SELECT k.id_karyawan, k.nama_karyawan, COALESCE(SUM(p.qty * b.harga_barang), 0) AS total_harga
FROM tbl_karyawan AS k
LEFT JOIN tbl_penjualan AS p ON k.id_karyawan = p.id_karyawan
LEFT JOIN tbl_barang AS b ON p.id_barang = b.id_barang
GROUP BY k.id_karyawan, k.nama_karyawan
ORDER BY k.id_karyawan ASC;

-- SOAL NOMOR 5
SELECT p.id_barang, b.nama_barang, COALESCE(SUM(p.qty * b.harga_barang), 0) AS total_harga
FROM tbl_penjualan AS p
RIGHT JOIN tbl_barang AS b ON p.id_barang = b.id_barang
WHERE p.tgl_transaksi BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY p.id_barang, b.nama_barang
HAVING total_harga > 0
ORDER BY total_harga DESC;
