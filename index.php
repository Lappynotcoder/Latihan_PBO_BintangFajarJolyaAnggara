<?php
require_once __DIR__ . '/koneksi/database.php';
require_once __DIR__ . '/class/tiketregular.php';
require_once __DIR__ . '/class/tiketImax.php';
require_once __DIR__ . '/class/tiketVelvet.php';

$koneksi = new Connection();
$db = $koneksi->getKoneksi();

// Query semua data tiket urut berdasarkan id_tiket
$query = $db->query("SELECT * FROM tabel_tiket ORDER BY id_tiket ASC");
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Tiket Bioskop</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 10px;
        }
        .filter-bar {
            text-align: center;
            margin-bottom: 20px;
        }
        .filter-bar label {
            font-size: 14px;
            color: #555;
            margin-right: 8px;
            font-weight: bold;
        }
        .filter-bar select {
            padding: 8px 16px;
            font-size: 14px;
            border: 1px solid #d1d5db;
            border-radius: 5px;
            background-color: #fff;
            cursor: pointer;
        }
        .section {
            background-color: #fff;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .section-header {
            background-color: #1e3a5f;
            color: #fff;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th {
            background-color: #e5e7eb;
            color: #333;
            padding: 10px 12px;
            text-align: left;
            font-size: 13px;
            border-bottom: 2px solid #d1d5db;
            position: sticky;
            top: 0;
        }
        td {
            padding: 9px 12px;
            font-size: 13px;
            color: #444;
            border-bottom: 1px solid #e5e7eb;
        }
        tr:nth-child(even) {
            background-color: #f9fafb;
        }
        tr:hover {
            background-color: #f0f4ff;
        }
        .harga {
            text-align: right;
            white-space: nowrap;
        }
        .center {
            text-align: center;
        }
        .badge {
            display: inline-block;
            padding: 3px 10px;
            border-radius: 12px;
            font-size: 11px;
            font-weight: bold;
            color: #fff;
        }
        .badge-regular {
            background-color: #2563eb;
        }
        .badge-imax {
            background-color: #991b1b;
        }
        .badge-velvet {
            background-color: #b45309;
        }
    </style>
</head>
<body>

<h1>Daftar Tiket Bioskop</h1>

<!-- Filter -->
<div class="filter-bar">
    <label for="filterStudio">Filter Studio:</label>
    <select id="filterStudio" onchange="filterTable()">
        <option value="semua">Semua Studio</option>
        <option value="Regular">Studio Regular</option>
        <option value="IMAX">Studio IMAX</option>
        <option value="Velvet">Studio Velvet</option>
    </select>
</div>

<div class="section">
    <div class="section-header">&#127902; Data Tiket Penonton</div>
    <table id="tabelTiket">
        <thead>
            <tr>
                <th class="center">No</th>
                <th class="center">ID Tiket</th>
                <th>Nama Film</th>
                <th>Jadwal Tayang</th>
                <th class="center">Jumlah Kursi</th>
                <th class="harga">Harga Dasar</th>
                <th class="center">Tipe Studio</th>
                <th>Info Fasilitas</th>
                <th class="harga">Total Harga</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;
            while ($row = $query->fetch_assoc()) {
                // Polimorfisme: instantiate kelas sesuai jenis_studio
                switch ($row['jenis_studio']) {
                    case 'Regular':
                        $tiket = new TiketRegular(
                            $row['id_tiket'],
                            $row['nama_film'],
                            $row['jadwal_tayang'],
                            $row['jumlah_kursi'],
                            $row['harga_dasar_tiket'],
                            $row['tipe_audio'],
                            $row['lokasi_baris']
                        );
                        $badgeClass = 'badge-regular';
                        break;
                    case 'IMAX':
                        $tiket = new TiketImax(
                            $row['id_tiket'],
                            $row['nama_film'],
                            $row['jadwal_tayang'],
                            $row['jumlah_kursi'],
                            $row['harga_dasar_tiket'],
                            $row['kacamata_3d_id'],
                            $row['efek_gerak_fitur']
                        );
                        $badgeClass = 'badge-imax';
                        break;
                    case 'Velvet':
                        $tiket = new TiketVelvet(
                            $row['id_tiket'],
                            $row['nama_film'],
                            $row['jadwal_tayang'],
                            $row['jumlah_kursi'],
                            $row['harga_dasar_tiket'],
                            $row['bantal_selimut_pack'],
                            $row['layanan_butler']
                        );
                        $badgeClass = 'badge-velvet';
                        break;
                }
            ?>
            <tr data-studio="<?= $row['jenis_studio'] ?>">
                <td class="center"><?= $no++ ?></td>
                <td class="center"><?= $row['id_tiket'] ?></td>
                <td><?= htmlspecialchars($row['nama_film']) ?></td>
                <td><?= date('d-m-Y H:i', strtotime($row['jadwal_tayang'])) ?></td>
                <td class="center"><?= $row['jumlah_kursi'] ?></td>
                <td class="harga">Rp<?= number_format($row['harga_dasar_tiket'], 0, ',', '.') ?></td>
                <td class="center"><span class="badge <?= $badgeClass ?>"><?= $row['jenis_studio'] ?></span></td>
                <td><?= htmlspecialchars($tiket->tampilkanInfoFasilitas()) ?></td>
                <td class="harga"><strong>Rp<?= number_format($tiket->hitungTotalHarga(), 0, ',', '.') ?></strong></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
</div>

<script>
function filterTable() {
    var filter = document.getElementById('filterStudio').value;
    var rows = document.querySelectorAll('#tabelTiket tbody tr');
    var no = 1;

    rows.forEach(function(row) {
        if (filter === 'semua' || row.getAttribute('data-studio') === filter) {
            row.style.display = '';
            row.cells[0].textContent = no++;
        } else {
            row.style.display = 'none';
        }
    });
}
</script>

</body>
</html>
