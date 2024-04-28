

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        input[type="text"], input[type="email"], input[type="tel"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 0.8em;
            margin-top: 5px;
        }

            h2{
                text-align: center;
                color:purple;
            }

    </style>
</head>
<body>
    <div class="container">
        <h2>ShopMake</h2>
        <form id="loginForm" onsubmit="return validateForm()" methode="post" action="../iranna/logchk.jsp">
            <input type="text" id="name" name="ps" placeholder="Name">
            <input type="email" id="email" name="eid" placeholder="Email">
            <div id="emailError" class="error"></div>
            <input type="tel" id="mobile" name="mob" placeholder="Mobile Number">
            <div id="mobileError" class="error"></div>
            <input type="submit" name="valid" value="Login">
            Create Account  ? <a href="../iranna/sdup.jsp">Sin Up</a>
        </form>
    </div>

    <script>
        function validateForm() {
            var name = document.getElementById('name').value;
            var email = document.getElementById('email').value;
            var mobile = document.getElementById('mobile').value;
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            var mobileRegex = /^\d{10}$/;
            var valid = true;
            if (name.trim() === '') {
                valid = false;
                alert('Please enter your name.');
            }
            if (!emailRegex.test(email)) {
                valid = false;
                document.getElementById('emailError').innerText = 'Please enter a valid email address ending with @gmail.com';
            } else {
                document.getElementById('emailError').innerText = '';
            }
            if (!mobileRegex.test(mobile)) {
                valid = false;
                document.getElementById('mobileError').innerText = 'Please enter a valid 10-digit mobile number.';
            } else {
                document.getElementById('mobileError').innerText = '';
            }
            return valid;
        }
    </script>
</body>
</html>
