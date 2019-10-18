<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <nav>
    <div class="nav-wrapper teal" >
      <a href="#" class="brand-logo" >&nbsp;&nbsp; Man-Med</a>
    </div>
  </nav>
    <div class="container">
        
        <form id="form1" runat="server" >
            <br /><br /><br />
            <div class="row">
                <center>
                    <img src="app.png" width="100px" height="100px" />
                </center>
            </div>
            <div class="row">
                <div class="input-field col s3">

                </div>
                <div class="input-field col s6">
                        <asp:input id="email" type="email" class="validate" required name="textBox1" />
                        <label for="email">Email</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s3">

                </div>
                <div class="input-field col s6">
                        <input id="password" type="password" class="validate" required name="textbox2">
                        <label for="password">Password</label>
                </div>
            </div>
            <div class="row">
                
                <div class="input-field col s3">

                </div>
                <div class="input-field col s4">
                    <button class="btn waves-effect waves-light" type="submit" name="loginbtn">Login
                        <i class="material-icons right">send</i>
                    </button>
                </div>
                
                <div class="input-field col s4">
                    <button class="btn waves-effect waves-light" type="submit" name="registerbtn">Register
                        
                    </button>
                </div>
                </center>
            </div>
                
     
        </form>
    </div>
    <script src="<script
  src="https://code.jquery.com/jquery-3.4.1.min.js""></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
</body>
</html>
