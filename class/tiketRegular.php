<?php
require_once __DIR__ . '/tiket.php';

class TiketRegular extends Pasien{
    
    private $tipe_audio;
    private $lokasi_baris;
    
    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket, $tipe_audio, $lokasi_baris){
        $this->id_tiket = $id_tiket;
        $this->nama_film = $nama_film;
        $this->jadwal_tayang = $jadwal_tayang;
        $this->jumlah_kursi = $jumlah_kursi;
        $this->hargaDasarTiket = $hargaDasarTiket;
        $this->tipe_audio = $tipe_audio;
        $this->lokasi_baris = $lokasi_baris;
    }
    public function hitungTotalHarga(): float{
        return $this->jumlah_kursi * $this->hargaDasarTiket;
    }
    public function tampilkanInfoFasilitas(): string{
        return "Tipe Audio: " . $this->tipe_audio . ", Lokasi Baris: " . $this->lokasi_baris;
    }
}
?>