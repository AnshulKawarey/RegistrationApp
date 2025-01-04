<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CoffeeRegistrationApp.Profile" %>

<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    <style>
        body {
            background-image: url('images/pixelcut-export%20(1).jpeg'); /* Path to your image */
            background-size: cover; /* Ensure the image covers the entire screen */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent repeating the image */
            color: #fff;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh; /* Full viewport height */
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            padding: 10px;
            background-color: rgb(128, 128, 128, 0.04);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px;
            backdrop-filter: blur(5px);
            display: flex;
            flex-direction: column;
            align-items: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Profile</h2>
        <p><b>Name:</b> <asp:Label ID="NameLabel" runat="server"></asp:Label></p>
        <p><b>Phone:</b> <asp:Label ID="PhoneLabel" runat="server"></asp:Label></p>
        <p><b>Address:</b> <asp:Label ID="AddressLabel" runat="server"></asp:Label></p>
        <p><b>Gender:</b> <asp:Label ID="GenderLabel" runat="server"></asp:Label></p>
    </div>
</body>
</html>
