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
    <div class="container">
        <form id="form1" runat="server">
            <div class="row"><br /><br /><br /><br /><br /><br /><br />
                <div class="input-field col s3">

                </div>
                <div class="input-field col s6">
                        <input id="email" type="email" class="validate" required />
                        <label for="email">Email</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s3">

                </div>
                <div class="input-field col s6">
                        <input id="password" type="password" class="validate" required>
                        <label for="password">Password</label>
                </div>
            </div>
            <div class="row">
                
                <div class="input-field col s3">

                </div>
                <div class="input-field col s4">
                    <button class="btn waves-effect waves-light" type="submit" name="action">Login
                        <i class="material-icons right">send</i>
                    </button>
                </div>
                
                <div class="input-field col s4">
                    <button class="btn waves-effect waves-light" type="submit" name="action">Register
                        
                    </button>
                </div>
                </center>
            </div>
                
     
        </form>
    </div>
    <script src="<script
  src="https://code.jquery.com/jquery-3.4.1.min.js""></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
