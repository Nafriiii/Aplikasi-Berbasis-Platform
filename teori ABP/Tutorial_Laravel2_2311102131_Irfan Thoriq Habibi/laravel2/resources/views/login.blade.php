<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Login</title>

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

        .btn-login {
            background-color: #16a34a;
            color: white;
            padding: 8px 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .link-register {
            color: #2563eb;
        }

        .error {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="card">

            <h2>Login</h2>

            <form action="{{ route('auth') }}" method="POST">
                @csrf

                <label>Email</label>
                <input type="email" name="email" value="{{ old('email') }}">

                <label>Password</label>
                <input type="password" name="password">

                <div class="actions">
                    <button class="btn-login">Login</button>
                    <a href="{{ route('registration') }}" class="link-register">
                        Belum punya akun?Register
                    </a>
                </div>

                @if(session('error'))
                    <p class="error">Email / password salah</p>
                @endif
            </form>

        </div>
    </div>

</body>

</html>