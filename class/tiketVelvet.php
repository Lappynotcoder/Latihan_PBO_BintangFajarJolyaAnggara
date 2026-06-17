<?php
require_once __DIR__ . '/tiket.php';

class TiketVelvet extends Pasien{
    
    private $bantal_selimut_pack;
    private $layanan_butler;
    
    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket, $bantal_selimut_pack, $layanan_butler){
        $this->id_tiket = $id_tiket;
        $this->nama_film = $nama_film;
        $this->jadwal_tayang = $jadwal_tayang;
        $this->jumlah_kursi = $jumlah_kursi;
        $this->hargaDasarTiket = $hargaDasarTiket;
        $this->bantal_selimut_pack = $bantal_selimut_pack;
        $this->layanan_butler = $layanan_butler;
    }
    public function hitungTotalHarga(): float{
        return ($this->jumlah_kursi * $this->hargaDasarTiket) * 1.50;
    }
    public function tampilkanInfoFasilitas(): string{
        $butler = $this->layanan_butler ? "Ya" : "Tidak";
        return "Bantal & Selimut Pack: " . $this->bantal_selimut_pack . ", Layanan Butler: " . $butler;
    }
}
?>