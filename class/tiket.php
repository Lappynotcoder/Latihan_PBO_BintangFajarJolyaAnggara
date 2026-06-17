<?php
require_once __DIR__ . '/../koneksi/database.php';

abstract class Pasien{
    protected $id_tiket;
    protected $nama_film;
    protected $jadwal_tayang;
    protected $jumlah_kursi;
    protected $hargaDasarTiket;

    abstract public function hitungTotalHarga(): float;

    abstract public function tampilkanInfoFasilitas(): string;
}