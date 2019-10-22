<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Man-Med</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        html, body {
          width: 100%;
          height: 100%;
          margin: 0;
          padding: 0;
          display: flex;
          align-items: center;
          justify-content: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col s3"></div>
            <form id="authForm" method="post" class="col s6">
                <center>
                    <div class="row">
                        <div class="col s12">
                            <img height="100" src="app.png" />
                        </div>
                    </div>
                </center>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="email" name="email" type="email" required="required" />
                        <label for="email">Email</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="password" name="password" type="password" required="required" />
                        <label for="password">Password</label>
                    </div>
                </div>
                <br />
                <div class="row">
                    <center>
                        <div class="col s6">
                            <button class="btn waves-effect waves-light" type="submit" name="login" value="Login">
                                <b style="color: #FFF;">Login<i class="material-icons right">send</i></b>
                            </button>
                        </div>
                    </center>
                    <center>
                        <div class="col s6">
                            <button class="btn waves-effect waves-light" type="submit" name="register" value="Register">
                                <b style="color: #FFF;">Register</b>
                            </button>
                        </div>
                    </center>
                </div>
            </form>
            <div class="col s3"></div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.fixed-action-btn').floatingActionButton();
            $('.modal').modal();
            var searchParams = new URLSearchParams(window.location.search);
            if (searchParams.has('r')) {
                if (searchParams.get('r') == 'rD') {
                    M.toast({ html: 'Registration Done' })
                } else if (searchParams.get('r') == 'aD') {
                    M.toast({ html: 'User Already Exists!' })
                } else if (searchParams.get('r') == 'lD') {
                    M.toast({ html: 'Login Done' })
                } else if (searchParams.get('r') == 'oD') {
                    M.toast({ html: 'Login Failed!' })
                }
            }
        });
    </script>
</body>
</html>
