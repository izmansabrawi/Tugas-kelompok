<?php
include '../../koneksi.php';

$id_formulir = addslashes($_POST['id_formulir']);
$proses = addslashes($_POST['proses']);

$query = mysqli_query($koneksi, "UPDATE formulir SET proses='Tidak Diterima' WHERE id_formulir='$id_formulir' ");

	if ($query) {
		$_SESSION['id_formulir'] = $query['id_formulir'];
			echo "
            <script>
                alert('Peserta Dinyatakan Tidak Diterima menjadi Peserta Diklat');
                document.location.href ='../proses-seleksi';
            </script>
            ";
		}
			else 
			{
		        echo "
		        <script>
		        	alert('Penentuan Calon Peserta Diklat Gagal di Simpan !');
		        	document.location.href ='../proses-seleksi';
		        </script>";
		    }
?>