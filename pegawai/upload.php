<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_repoibn";

// Koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi ke database gagal: " . $conn->connect_error);
}

$id_pegawai = $_POST['id_pegawai'];
$id_prodi = $_POST['id_prodi'];
$id_tipe = $_POST['id_tipe'];
$judul = $_POST['judul'];
$deskripsi = $_POST['deskripsi'];
$tanggal = $_POST['tanggal'];
$tanggal_buat = $_POST['tanggal_buat'];
$tahun = $_POST['tahun'];

$targetDir = "uploads/";
$gambar = $targetDir . basename($_FILES["gambar"]["name"]);
$file_repo = $targetDir . basename($_FILES["file_repo"]["name"]);

$uploadOk = 1;

// Cek apakah file sudah ada
if (file_exists($gambar) || file_exists($file_repo)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}

// Cek ukuran file
if ($_FILES["gambar"]["size"] > 5000000 || $_FILES["file_repo"]["size"] > 50000000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

// Izinkan format file tertentu
$imageFileType = strtolower(pathinfo($gambar, PATHINFO_EXTENSION));
$repoFileType = strtolower(pathinfo($file_repo, PATHINFO_EXTENSION));

$allowed_image_types = array("jpg", "png", "jpeg", "gif");
$allowed_repo_types = array("pdf", "doc", "docx");

if (!in_array($imageFileType, $allowed_image_types) || !in_array($repoFileType, $allowed_repo_types)) {
    echo "Sorry, only JPG, JPEG, PNG, GIF files are allowed for images and PDF, DOC, DOCX files are allowed for repositories.";
    $uploadOk = 0;
}

// Cek apakah $uploadOk 0 oleh kesalahan
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
} else {
    if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $gambar) && move_uploaded_file($_FILES["file_repo"]["tmp_name"], $file_repo)) {
        $sql = "INSERT INTO repo (id_pegawai, id_prodi, id_tipe, judul, deskripsi, gambar, file_repo, tanggal, tanggal_buat, tahun) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("iiisssssss", $id_pegawai, $id_prodi, $id_tipe, $judul, $deskripsi, $gambar, $file_repo, $tanggal, $tanggal_buat, $tahun);
        
        if ($stmt->execute()) {
            echo "success: The file has been uploaded successfully. <br> Data inserted successfully.";
        } else {
            echo "Sorry, there was an error uploading your file and inserting data.";
        }
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}

$conn->close();
?>
