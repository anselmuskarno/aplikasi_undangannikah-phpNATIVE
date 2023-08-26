 <?php
	require_once('Api/koneksi.php');

	//error_reporting(0);


	if ($_GET['aksi'] == "hapus") {
		// echo ("berhasil");
		$id = $_GET['id'];
		mysqli_query($conn, "DELETE FROM undangan WHERE id = '$id' ");
		header("location:kelolaUndangan.php");
		// return;
	} else if ($_GET['aksi'] == "edit") {
		echo ("data akan diedit");
		// return;
		$id = $_GET['id'];
		$nama_tamu = $_POST['nama_tamu'];
		$nomor_hp = $_POST['nomor_hp'];
		$query = "UPDATE undangan SET nama_tamu = '$nama_tamu', nomor_hp ='$nomor_hp' where id='$id'";
		$sql = mysqli_query($conn, $query); // Eksekusi/ Jalankan query dari variabel $query
		header("location:kelolaUndangan.php");
		// return;
	} else {

		$nama_tamu = $_POST['nama_tamu'];
		$nomor_hp = $_POST['nomor_hp'];


		mysqli_query($conn, "INSERT INTO undangan VALUES('','$nama_tamu','$nomor_hp')");
		header('location:kelolaUndangan.php');
	}
	?>