<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CoffeeRegistrationApp.Register" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
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

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 20px;
            width: 100%;
        }

        input,
        select,
        button {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            background-color: transparent;
            color: #333;
            border: 2px solid #aeaeae;
            border-radius: 4px;
            font-size: 16px;
            font-weight: normal;
        }

        input:focus,
        select:focus {
            background-color: rgba(255, 255, 255, 0.8);
            border-color: #6F4F37; /* Dark brown border on focus */
            outline: none;
        }

        button {
            background-color: #aeaeae; /* Coffee brown color */
            color: #fff;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }

        button:hover {
            background-color: #3d3d3d; /* Lighten on hover */
            border-color: #aeaeae;
            transform: scale(1.05);
        }

        /* Optional: Style the Select dropdown */
        select {
            padding: 12px; /* Add padding to the dropdown */
            background-color: transparent;
            color: #333;
            border-radius: 4px;
            border: 2px solid #aeaeae;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Form</h1>
        <form id="registrationForm" runat="server">
            <asp:TextBox ID="NameTextBox" runat="server" placeholder="Enter your name" required></asp:TextBox><br />
            <asp:TextBox ID="PhoneTextBox" runat="server" placeholder="Enter your phone number" required></asp:TextBox><br />
            <asp:TextBox ID="AddressTextBox" runat="server" placeholder="Enter your address" required></asp:TextBox><br />
            
            <!-- Gender Dropdown -->
            <asp:DropDownList ID="GenderDropDown" runat="server" required>
                <asp:ListItem Text="Select Gender" Value="" />
                <asp:ListItem Text="Male" Value="Male" />
                <asp:ListItem Text="Female" Value="Female" />
                <asp:ListItem Text="Other" Value="Other" />
            </asp:DropDownList><br />

            <button type="submit" runat="server" onserverclick="SubmitButton_Click">Submit</button>
        </form>
    </div>
</body>
</html>
