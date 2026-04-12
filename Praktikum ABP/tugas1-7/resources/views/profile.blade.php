<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Profile Saya</title>

    <link rel="stylesheet" href="{{ asset('cv/profile.css') }}">
</head>

<body>

    <div class="profile-card">

        <div class="img-wrapper">
            <img src="{{ asset('cv/foto.jpg') }}" class="profile-img" alt="Foto Profil">
        </div>

        <h2>Irfan Thoriq Habibi</h2>
        <div class="role">Web Developer</div>

        <p class="desc">
            Memiliki minat pada Data Analyst, Web Development, dan Quality Assurance.
            Memiliki pengalaman dasar dalam pengembangan web serta terus mengembangkan
            kemampuan analisis data melalui pembelajaran dan proyek sederhana.
        </p>

        <div class="btn-group">
            <a href="{{ asset('cv/cv.php') }}" class="btn primary"> CV</a>

            <a href="https://github.com/Nafriiii/Aplikasi-Berbasis-Platform" target="_blank" class="btn secondary">
                GitHub
            </a>
        </div>

    </div>

</body>

</html>