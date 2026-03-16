<?php
session_start();

$msg = "";

if (isset($_POST['login'])) {

    $username = $_POST['username'];
    $password = $_POST['password'];

    if (isset($_SESSION['user']) && $username == $_SESSION['user'] && $password == $_SESSION['pass']) {
        $msg = "welcome $username";
    } else {
        $msg = "login gagal";
    }

}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Login</title>

    <style>
         body {
            font-family: Arial;
            background: #ffffff;
        }

        .container {
            width: 350px;
            margin-left: 0;
            margin-top: 80px;
        }

        .form-group {
            display: flex;
            margin-bottom: 10px;
        }

        label {
            width: 100px;
        }

        input {
            flex: 1;
            padding: 5px;
        }

        button {
            margin-left: 100px;
            margin-right: 10px;
            background: #2e7d32;
            color: white;
            border: none;
            padding: 7px 15px;
        }
    </style>

</head>

<body>

    <div class="container">

        <h2>Login</h2>

        <form method="post">

            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username">
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password">
            </div>

            <button type="submit" name="login">Login</button>
            <a href="register.php">Register</a>

        </form>

        <?php
        if ($msg != "") {
            echo "<div class='msg'>$msg</div>";
        }
        ?>

    </div>

</body>

</html>