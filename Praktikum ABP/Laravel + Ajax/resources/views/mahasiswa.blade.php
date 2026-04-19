<!DOCTYPE html>
<html>
<head>
    <title>Data Mahasiswa</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body class="bg-light">

<div class="container mt-5">

    <h1 class="text-center mb-4">Data Mahasiswa</h1>

    <div class="text-center">
        <button id="btnData" class="btn btn-primary mb-4">
            Tampilkan Data
        </button>
    </div>

    <div id="hasil" class="row g-3"></div>

</div>

<script>
    $('#btnData').click(function() {

        $('#hasil').html('<p class="text-center">Loading...</p>');

        $.ajax({
            url: '/get-mahasiswa',
            method: 'GET',
            success: function(data) {

                let html = '';

                data.forEach(function(item) {
                    html += `
                        <div class="col-md-4">
                            <div class="card shadow-sm">
                                <div class="card-body">
                                    <h5 class="card-title">${item.nama}</h5>
                                    <p class="card-text">
                                        <strong>NIM:</strong> ${item.nim}<br>
                                        <strong>Kelas:</strong> ${item.kelas}<br>
                                        <strong>Prodi:</strong> ${item.prodi}
                                    </p>
                                </div>
                            </div>
                        </div>
                    `;
                });

                $('#hasil').html(html);
            },
            error: function() {
                $('#hasil').html('<p class="text-danger text-center">Gagal mengambil data</p>');
            }
        });
    });
</script>

</body>
</html>