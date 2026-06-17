<?php
require_once __DIR__ . '/tiket.php';

class TiketImax extends Pasien{

    private $kacamata_3d_id;
    private $efek_gerak_fitur;

    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $hargaDasarTiket, $kacamata_3d_id, $efek_gerak_fitur){
        $this->id_tiket = $id_tiket;
        $this->nama_film = $nama_film;
        $this->jadwal_tayang = $jadwal_tayang;
        $this->jumlah_kursi = $jumlah_kursi;
        $this->hargaDasarTiket = $hargaDasarTiket;
        $this->kacamata_3d_id = $kacamata_3d_id;
        $this->efek_gerak_fitur = $efek_gerak_fitur;
    }
    public function hitungTotalHarga(): float{
        return ($this->jumlah_kursi * $this->hargaDasarTiket) + 35000;
    }
    public function tampilkanInfoFasilitas(): string{
        return "Kacamata 3D ID: " . $this->kacamata_3d_id . ", Efek Gerak Fitur: " . $this->efek_gerak_fitur;
    }
}
?>