<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Registration</title>

    <style>
        .card {
            background-color: white;
            padding: 25px;
            width: 300px;
        }

        .container {
            display: flex;
            justify-content: left;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .btn-register {
            background-color: #16a34a;
            color: white;
            padding: 8px 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .link-login {
            color: #2563eb;
            font-size: 14px;
        }

        .success {
            color: green;
            margin-top: 10px;
            text-align: left;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="card">

            <h2>Registration</h2>

            @if ($errors->any())
                <div class="error-list">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>- {{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form action="{{ route('register') }}" method="POST">
                @csrf

                <label>Email</label>
                <input type="email" name="email" required value="{{ old('email') }}">
                @error('email')
                    <p class="error-text">{{ $message }}</p>
                @enderror

                <label>Nama</label>
                <input type="text" name="name" required value="{{ old('name') }}">
                @error('name')
                    <p class="error-text">{{ $message }}</p>
                @enderror

                <label>Password</label>
                <input type="password" name="password" required>
                @error('password')
                    <p class="error-text">{{ $message }}</p>
                @enderror

                <div class="actions">
                    <button class="btn-register">Register</button>

                    <a href="{{ route('login') }}" class="link-login">
                        Login
                    </a>
                </div>

                @if(session('success'))
                    <p class="success">Registrasi berhasil</p>
                @endif

            </form>

        </div>
    </div>

</body>

</html>