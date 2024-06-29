<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Repo with Progress Bar</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Upload Repository</h2>
        <form id="uploadForm" enctype="multipart/form-data">
            <div class="form-group">
                <label>Judul:</label>
                <input type="text" name="judul" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Deskripsi:</label>
                <textarea name="deskripsi" class="form-control" required></textarea>
            </div>
            <div class="form-group">
                <label>Gambar:</label>
                <input type="file" name="gambar" class="form-control-file" required>
            </div>
            <div class="form-group">
                <label>File Repo:</label>
                <input type="file" name="file_repo" class="form-control-file" required>
            </div>
            <input type="hidden" name="id_pegawai" value="1">
            <input type="hidden" name="id_prodi" value="1">
            <input type="hidden" name="id_tipe" value="1">
            <input type="hidden" name="tanggal" value="2023-01-01">
            <input type="hidden" name="tanggal_buat" value="2023-01-01">
            <input type="hidden" name="tahun" value="2023">
            <button type="submit" class="btn btn-primary">Upload</button>
        </form>
        <div class="progress mt-3">
            <div class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">0%</div>
        </div>
        <div id="uploadStatus" class="mt-3"></div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            $('#uploadForm').on('submit', function(e){
                e.preventDefault();
                $.ajax({
                    xhr: function() {
                        var xhr = new window.XMLHttpRequest();
                        xhr.upload.addEventListener("progress", function(evt) {
                            if (evt.lengthComputable) {
                                var percentComplete = evt.loaded / evt.total;
                                percentComplete = parseInt(percentComplete * 100);
                                $('.progress-bar').width(percentComplete + '%');
                                $('.progress-bar').attr('aria-valuenow', percentComplete);
                                $('.progress-bar').text(percentComplete + '%');
                            }
                        }, false);
                        return xhr;
                    },
                    type: 'POST',
                    url: 'upload.php',
                    data: new FormData(this),
                    contentType: false,
                    processData: false,
                    success: function(response){
                        $('#uploadStatus').html(response);
                        if(response.indexOf("success") !== -1){
                            $('.progress-bar').addClass('bg-success');
                        } else {
                            $('.progress-bar').addClass('bg-danger');
                        }
                    }
                });
            });
        });
    </script>
</body>
</html>
