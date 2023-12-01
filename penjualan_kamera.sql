-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 06.23
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_kamera`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_beli`
--

CREATE TABLE `detail_beli` (
  `id` int(11) NOT NULL,
  `pembelian_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_beli`
--

INSERT INTO `detail_beli` (`id`, `pembelian_id`, `barang_id`, `qty`, `harga`, `total`) VALUES
(1, 1, 2, 1, 25000000, 25000000),
(2, 2, 2, 1, 25000000, 25000000),
(3, 3, 3, 1, 45000000, 45000000),
(4, 4, 5, 1, 30000000, 30000000),
(5, 5, 6, 1, 35000000, 35000000),
(6, 6, 6, 1, 35000000, 35000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jual`
--

CREATE TABLE `detail_jual` (
  `id` int(11) NOT NULL,
  `penjualan_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `total_jual` int(11) DEFAULT NULL,
  `status` enum('berhasil','return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_jual`
--

INSERT INTO `detail_jual` (`id`, `penjualan_id`, `barang_id`, `qty`, `harga_jual`, `total_jual`, `status`) VALUES
(1, 1, 2, 1, 25000000, 2500000, 'return'),
(2, 2, 2, 1, 25000000, 25000000, 'berhasil'),
(3, 3, 3, 1, 45000000, 45000000, 'berhasil'),
(4, 4, 5, 1, 30000000, 30000000, 'berhasil'),
(5, 5, 6, 1, 35000000, 35000000, 'return'),
(6, 6, 6, 1, 35000000, 35000000, 'berhasil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_return`
--

CREATE TABLE `detail_return` (
  `id` int(11) NOT NULL,
  `return_id` int(11) DEFAULT NULL,
  `penjualan_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `desk` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_return`
--

INSERT INTO `detail_return` (`id`, `return_id`, `penjualan_id`, `barang_id`, `qty`, `harga_beli`, `total`, `desk`) VALUES
(1, 1, 1, 2, 1, 25000000, 25000000, 'kamera lecet'),
(2, 2, 2, 2, 1, 25000000, 25000000, '-'),
(3, 3, 3, 3, 1, 45000000, 45000000, '-'),
(4, 4, 4, 5, 1, 30000000, 30000000, '-'),
(5, 5, 5, 6, 1, 35000000, 35000000, 'kamera berdebu'),
(6, 6, 6, 6, 1, 35000000, 35000000, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang`
--

CREATE TABLE `t_barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `jumlah_stok` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `merk_kamera` varchar(50) DEFAULT NULL,
  `rak` varchar(11) DEFAULT NULL,
  `tahun` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_barang`
--

INSERT INTO `t_barang` (`id`, `nama_barang`, `jumlah_stok`, `harga_jual`, `harga_beli`, `merk_kamera`, `rak`, `tahun`) VALUES
(1, 'sony a7', 1, 25000000, 24000000, 'Sony', 'r1', '2023-11-27'),
(2, 'canon c100', 3, 50000000, 49000000, 'canon', 'r2', '2023-11-27'),
(3, 'lumix g7', 3, 45000000, 44000000, 'panasonic', 'r2', '2023-11-27'),
(4, 'nikon z6', 2, 40000000, 39000000, 'nikon', 'r3', '2023-11-27'),
(5, 'fujifilm x-a2', 2, 30000000, 29000000, 'fujifilm', 'r4', '2023-11-27'),
(6, 'olympus om-d e-m10', 3, 35000000, 34000000, 'olympus', 'r4', '2023-11-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kustomer`
--

CREATE TABLE `t_kustomer` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jk` enum('laki-laki','perempuan') DEFAULT NULL,
  `kode_pos` int(11) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `no_hp` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_kustomer`
--

INSERT INTO `t_kustomer` (`id`, `nama`, `alamat`, `jk`, `kode_pos`, `kota`, `no_hp`) VALUES
(1, 'Deni', 'Jl.Kejaksaan', 'laki-laki', 70247, 'Banjaramasin', '089572938912'),
(2, 'julia', 'jl.hksn', 'perempuan', 70247, 'banjarmasin', '085290090002'),
(3, 'andi', 'jl.kelayan', 'laki-laki', 70247, 'banjarmasin', '089579980971'),
(4, 'kevin', 'jl.veteran', 'laki-laki', 70247, 'banjarmasin', '087829030192'),
(5, 'arif', 'jl.pramuka', 'laki-laki', 70247, 'banjarmasin', '085288910398'),
(6, 'setya', 'jl.gatot', 'perempuan', 70247, 'banjarmasin', '089572889281');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pembelian`
--

CREATE TABLE `t_pembelian` (
  `id` int(10) NOT NULL,
  `no_transaksi` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pembayaran` enum('cash','tf') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_pembelian`
--

INSERT INTO `t_pembelian` (`id`, `no_transaksi`, `tgl`, `harga`, `jumlah_bayar`, `user_id`, `pembayaran`) VALUES
(1, 1, '2023-11-30 00:00:00', 25000000, 25000000, 1, 'cash'),
(2, 2, '2023-11-30 00:00:00', 25000000, 25000000, 2, 'cash'),
(3, 3, '2023-11-30 00:00:00', 45000000, 45000000, 3, 'tf'),
(4, 4, '2023-11-30 00:00:00', 30000000, 30000000, 4, 'tf'),
(5, 5, '2023-11-30 00:00:00', 35000000, 35000000, 5, 'tf'),
(6, 6, '2023-11-30 00:00:00', 35000000, 35000000, 6, 'cash');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penjualan`
--

CREATE TABLE `t_penjualan` (
  `id` int(11) NOT NULL,
  `tgl_penjualan` datetime DEFAULT NULL,
  `kustomer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `no_transaksi` int(11) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `pembayaran` enum('cash','tf') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_penjualan`
--

INSERT INTO `t_penjualan` (`id`, `tgl_penjualan`, `kustomer_id`, `user_id`, `no_transaksi`, `harga`, `jumlah_bayar`, `pembayaran`) VALUES
(1, '2023-11-30 00:00:00', 1, 1, 1, '25000000', 25000000, 'cash'),
(2, '2023-11-30 00:00:00', 2, 2, 2, '25000000', 25000000, 'cash'),
(3, '2023-11-30 00:00:00', 3, 3, 3, '45000000', 45000000, 'tf'),
(4, '2023-11-30 00:00:00', 4, 4, 4, '30000000', 30000000, 'tf'),
(5, '2023-11-30 00:00:00', 5, 5, 5, '35000000', 35000000, 'tf'),
(6, '2023-11-30 00:00:00', 6, 6, 6, '35000000', 35000000, 'cash'),
(7, '2023-11-30 00:00:00', 1, 1, 1, '23000000', 23000000, 'cash');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_return`
--

CREATE TABLE `t_return` (
  `id` int(11) NOT NULL,
  `penjualan_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `total_jual` int(11) DEFAULT NULL,
  `status` enum('berhasil','batal') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_return`
--

INSERT INTO `t_return` (`id`, `penjualan_id`, `barang_id`, `user_id`, `qty`, `harga_jual`, `total_jual`, `status`) VALUES
(1, 1, 2, 1, 1, 25000000, 25000000, 'berhasil'),
(2, 2, 2, 2, 1, 25000000, 25000000, 'batal'),
(3, 3, 3, 3, 1, 45000000, 45000000, 'batal'),
(4, 4, 5, 4, 1, 30000000, 30000000, 'batal'),
(5, 5, 6, 5, 1, 35000000, 35000000, 'berhasil'),
(6, 6, 6, 6, 1, 35000000, 35000000, 'batal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_stok`
--

CREATE TABLE `t_stok` (
  `id` int(11) NOT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `desk` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` enum('true','false') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_stok`
--

INSERT INTO `t_stok` (`id`, `barang_id`, `desk`, `jumlah`, `harga`, `status`) VALUES
(1, 1, 'sony', 1, 25000000, 'true'),
(2, 2, 'canon c100', 3, 45000000, 'true'),
(3, 3, 'lumix g7', 3, 45000000, 'true'),
(4, 4, 'nikon z6', 2, 40000000, 'true'),
(5, 5, 'fujifilm x-a2', 2, 30000000, 'true'),
(6, 6, 'olympus om-d e-m10', 3, 35000000, 'true');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_supplier`
--

CREATE TABLE `t_supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `kota_asal` varchar(100) DEFAULT NULL,
  `no_hp` varchar(16) NOT NULL,
  `perusahaan_asal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_supplier`
--

INSERT INTO `t_supplier` (`id`, `nama_supplier`, `alamat`, `kota_asal`, `no_hp`, `perusahaan_asal`) VALUES
(1, 'Faqih', 'Jl.Tembus', 'Banjarmasin', '089570322800', 'Canon'),
(2, 'garin', 'jl.gatot', 'banjarmasin', '085290193849', 'nikon'),
(3, 'amat', 'jl.hksn', 'banjarmasin', '087892930129', 'panasonic'),
(4, 'ali', 'jl.veteran', 'banjarmasin', '087893900299', 'sony'),
(5, 'abdul', 'jl.pramuka', 'banjarmasin', '089528290011', 'fujifilm'),
(6, 'ferry', 'jl.dahlia', 'banjarmasin', '089578930091', 'olympus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tgl_bergabung` date DEFAULT NULL,
  `no_hp` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `alamat`, `tgl_bergabung`, `no_hp`) VALUES
(1, 'abell123', 'abell123', 'Muhamad Abell Deskiawan', 'Jl. Kelayan A', '2023-11-27', '0895703228001'),
(2, 'saufi222', 'saufi222', 'ahmad saufi', 'jl.teluk tiram', '2023-11-27', '085890203909'),
(3, 'agus000', 'agus000', 'agus renaldi', 'Jl.manarap', '2023-11-27', '087823900912'),
(4, 'yudha456', 'yudha456', 'yudha rifqi', 'jl.gerliya', '2023-11-27', '089501292889'),
(5, 'amin221', 'amin221', 'muhammad amin', 'jl.gerliya', '2023-11-27', '097829381010'),
(6, 'udin2', 'udin2', 'udin wakwak', 'jl.veteran', '2023-11-27', '089576288191');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dtlpembelian_pembelian` (`pembelian_id`),
  ADD KEY `fk_dtlpembelian_barang` (`barang_id`);

--
-- Indeks untuk tabel `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_barang` (`barang_id`),
  ADD KEY `fk_detail_penjualan` (`penjualan_id`);

--
-- Indeks untuk tabel `detail_return`
--
ALTER TABLE `detail_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dreturn_treturn` (`return_id`),
  ADD KEY `fk_dreturn_penjualan` (`penjualan_id`),
  ADD KEY `fk_dreturn_barang` (`barang_id`);

--
-- Indeks untuk tabel `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_kustomer`
--
ALTER TABLE `t_kustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_pembelian`
--
ALTER TABLE `t_pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembelian_user` (`user_id`);

--
-- Indeks untuk tabel `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_penjualan_pembeli` (`kustomer_id`),
  ADD KEY `fk_penjualan_user` (`user_id`);

--
-- Indeks untuk tabel `t_return`
--
ALTER TABLE `t_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_return_penjualan` (`penjualan_id`),
  ADD KEY `fk_return_barang` (`barang_id`),
  ADD KEY `fk_return_user` (`user_id`);

--
-- Indeks untuk tabel `t_stok`
--
ALTER TABLE `t_stok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_stok_barang` (`barang_id`);

--
-- Indeks untuk tabel `t_supplier`
--
ALTER TABLE `t_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_beli`
--
ALTER TABLE `detail_beli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `detail_jual`
--
ALTER TABLE `detail_jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `detail_return`
--
ALTER TABLE `detail_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `t_barang`
--
ALTER TABLE `t_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `t_kustomer`
--
ALTER TABLE `t_kustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `t_pembelian`
--
ALTER TABLE `t_pembelian`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `t_return`
--
ALTER TABLE `t_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `t_supplier`
--
ALTER TABLE `t_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD CONSTRAINT `fk_dtlpembelian_barang` FOREIGN KEY (`barang_id`) REFERENCES `t_barang` (`id`),
  ADD CONSTRAINT `fk_dtlpembelian_pembelian` FOREIGN KEY (`pembelian_id`) REFERENCES `t_pembelian` (`id`);

--
-- Ketidakleluasaan untuk tabel `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD CONSTRAINT `fk_detail_barang` FOREIGN KEY (`barang_id`) REFERENCES `t_barang` (`id`),
  ADD CONSTRAINT `fk_detail_penjualan` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`id`);

--
-- Ketidakleluasaan untuk tabel `detail_return`
--
ALTER TABLE `detail_return`
  ADD CONSTRAINT `fk_dreturn_barang` FOREIGN KEY (`barang_id`) REFERENCES `t_barang` (`id`),
  ADD CONSTRAINT `fk_dreturn_penjualan` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`id`),
  ADD CONSTRAINT `fk_dreturn_treturn` FOREIGN KEY (`return_id`) REFERENCES `t_return` (`id`);

--
-- Ketidakleluasaan untuk tabel `t_pembelian`
--
ALTER TABLE `t_pembelian`
  ADD CONSTRAINT `fk_pembelian_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD CONSTRAINT `fk_penjualan_pembeli` FOREIGN KEY (`kustomer_id`) REFERENCES `t_kustomer` (`id`),
  ADD CONSTRAINT `fk_penjualan_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `t_return`
--
ALTER TABLE `t_return`
  ADD CONSTRAINT `fk_return_barang` FOREIGN KEY (`barang_id`) REFERENCES `t_barang` (`id`),
  ADD CONSTRAINT `fk_return_penjualan` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`id`),
  ADD CONSTRAINT `fk_return_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `t_stok`
--
ALTER TABLE `t_stok`
  ADD CONSTRAINT `fk_stok_barang` FOREIGN KEY (`barang_id`) REFERENCES `t_barang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
