<!DOCTYPE html>
<html lang="en">

<head>
  <?php
  //koneksi
  require_once('Api/koneksi.php');
  //header
  require_once('header.php'); ?>
</head>

<body class="nav-md">
  <div class="container body">
    <div class="main_container">
      <!-- Start = Sidebar -->
      <?php
      //sidebar
      require_once('sidebar.php');
      //navbar atas
      require_once('topNavigation.php');
      ?>


      <!-- Start = isi konten -->
      <div class="right_col" role="main">
        <div class="row">
          <div class="col-md-12 col-sm-12 ">
            <div class="dashboard_graph">

              <div class="row x_title">
                <div class="col-md-6">
                  <h3>Kelola Undangan</h3>
                </div>
                <div class="col-md-6">
                  <a href="../index.php#gallery" class="btn btn-primary " style="float:right;" target="_blank  ">LIHAT WEB</a>
                </div>

              </div>

              <div class="col-md-12 col-sm-12 ">
                <br>

                <form method="POST" action="crudUndangan.php" enctype="multipart/form-data" class="form-horizontal form-label-left">

                  <div class="item form-group">
                    <label class="col-form-label col-md-3 col-sm-3 label-align">Nama Tamu Undangan</label>
                    <div class="col-md-6 col-sm-6 ">
                      <input type="text" class="form-control" name="nama_tamu" required>
                    </div>
                  </div>
                  <div class="item form-group">
                    <label class="col-form-label col-md-3 col-sm-3 label-align">Nomor HP</label>
                    <div class="col-md-6 col-sm-6 ">
                      <input type="text" class="form-control" name="nomor_hp" placeholder="Contoh: 6282262351565" required>
                    </div>
                  </div>

                  <div class="item form-group">
                    <div class="col-md-6 col-sm-6 offset-md-3">
                      <button type="submit" class="btn btn-info">Simpan</button> atau
                </form>

                <div type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">Upload dari Excel</div>
              </div>
            </div>
            <div class="ln_solid"></div>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Pilih file yang akan diimport </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>

                  <div class="modal-body">
                    <form method="post" enctype="multipart/form-data">
                      Pilih File:
                      <input class="form-control" name="file_undangan" type="file" required>
                      <span class="text-danger">format: (.xls)</span>
                      <!-- <input name="upload" type="submit" value="Import"> -->

                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <input type="submit" name="import-excel" class="btn btn-success" value="Import Dari excel">
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

          </div>
          <div class="col-sm-12">
            <h3>List Undangan</h3>
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama Yang diundang</th>
                  <th class="">Nomor Hp</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $undangan = mysqli_query($conn, "SELECT * FROM undangan");
                $no = 1;
                while ($infoUndangan = mysqli_fetch_array($undangan)) {
                ?>
                  <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $infoUndangan['nama_tamu']; ?></td>
                    <td><?php echo $infoUndangan['nomor_hp']; ?></td>

                    <td>
                      <a class="btn btn-sm btn-primary" target="_blank" href="../indexWA.php?nama=<?php echo $infoUndangan['nama_tamu']; ?>">Lihat Undangan</a>
                      <?php
                      $resepsi = mysqli_query($conn, "SELECT * FROM resepsi");
                      while ($tampilResepsi = mysqli_fetch_array($resepsi)) {
                      ?>
                        <a class="btn btn-sm btn-warning" target="_blank" href="https://wa.me/<?php echo $infoUndangan['nomor_hp']; ?>?text=%22Tuhan%20membuat%20segala%20sesuatu%20indah%20pada%20waktu-Nya%2C%20Indah%20saat%20Dia%20%0Amempertemukan%2C%20Indah%20saat%20Dia%20menumbuhkan%20kasih%2C%20dan%20Indah%20saat%20%20Dia%0A%20mempersatukan%20putra%20putri%20kami%20dalam%20pernikahan%20kudus.%22%20%0A%0A%0A%20<?php echo $tampilResepsi['namaPria']; ?>%20%26%20<?php echo $tampilResepsi['namaWanita']; ?>%0A%0AResepsi%20Pernikahan%20%0AAkan%20dilaksanakan%20pada%20%3A%0AHari%2C%20Tanggal%20%3A%20Senin%2C%2022%20MEI%202023%20%0AJam%20%3A%2011%3A30%20WITA%20%0ALokasi%20%3A%20<?php echo $tampilResepsi['alamatResepsi']; ?>%0APemberkatan%20Nikah%20%0AAkan%20dilaksanakan%20pada%20%3A%0AHari%2C%20Tanggal%20%3A%20Senin%2C%2022%20MEI%202023%20%0AJam%20%3A%2009.30%20WITA%20%0ALokasi%20%3A%20Gereja%20Toraja%20Jemaat%20Kanuruan%20%0A%0AUndangan%20dapat%20diakses%20melalui%3A%0Ahttp%3A%2F%2Flocalhost%2Faplikasiundanganikah%2FindexWA.php%3Fnama%3D<?php echo $infoUndangan['nama_tamu']; ?>%0A%0AKehadiran%20dan%20doa%20restu%20dari%20keluarga%2C%20sahabat%2C%20dan%20teman-teman%20%0Aakan%20semakin%20melengkapi%20kebahagiaan%20kami.%0AKami%20yang%20berbahagia%2C%0A<?php echo $tampilResepsi['namaPria']; ?>%C2%A0%26%C2%A0<?php echo $tampilResepsi['namaWanita']; ?>">Kirim Undangan</a>

                      <?php
                      }
                      ?>
                      <a class="btn btn-sm btn-info" target="_blank" href="#!" data-bs-toggle="modal" data-bs-target="#exampleModal<?php echo $infoUndangan['id']; ?>">Edit</a>
                      <a class="btn btn-sm btn-danger" target="_blank" href="crudUndangan.php?id=<?php echo $infoUndangan['id']; ?>&aksi=hapus" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</a>

                      <!-- Modal Edit-->
                      <div class="modal fade" id="exampleModal<?php echo $infoUndangan['id']; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel">Edit Data</h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                              <form method="POST" action="crudUndangan.php?id=<?php echo $infoUndangan['id']; ?>&aksi=edit" enctype="multipart/form-data" class="form-horizontal form-label-left">

                                <div class="item form-group">
                                  <label class="col-form-label col-md-3 col-sm-3 label-align">Nama Tamu Undangan</label>
                                  <div class="col-md-6 col-sm-6 ">
                                    <input type="text" class="form-control" name="nama_tamu" value="<?php echo $infoUndangan['nama_tamu']; ?>" required>
                                  </div>
                                </div>
                                <div class="item form-group">
                                  <label class="col-form-label col-md-3 col-sm-3 label-align">Nomor HP</label>
                                  <div class="col-md-6 col-sm-6 ">
                                    <input type="text" class="form-control" name="nomor_hp" placeholder="Contoh: 6282262351565" value="<?php echo $infoUndangan['nomor_hp']; ?>" required>
                                  </div>
                                </div>

                                <div class="item form-group">
                                  <div class="col-md-6 col-sm-6 offset-md-3">
                                    <button type="submit" class="btn btn-info">Simpan Perubahan</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                  </div>
                                </div>
                                <div class="ln_solid"></div>

                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>
                <?php
                }
                ?>
              </tbody>
            </table>
          </div>
          <div class="clearfix"></div>

        </div>
      </div>
    </div>
    <br />
  </div>
  <!-- End = isi konten -->




  <!--  -->
  </div>
  </div>


  <!-- Start = Footer -->
  <?php require_once('footer.php'); ?>
  <!-- End = Isi Footer -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>