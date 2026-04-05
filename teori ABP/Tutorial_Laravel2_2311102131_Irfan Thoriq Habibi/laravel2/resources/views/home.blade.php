<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <style>
        body {
            background-color: #f3f4f6;
            text-align: left;
            margin-top: 100px;
        }

        .tombol-logout {
            background-color: #2563eb; /* biru */
            color: white;
            padding: 10px 18px;
            border-radius: 6px;
        }

    </style>
</head>

<body>

    <h1>Selamat datang, {{ $user->name }}</h1>

    <div>
        <a href="/logout" class="tombol-logout">
            Logout
        </a>
    </div>

</body>

</html>