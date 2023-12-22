<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Deaf Hajj Registeration </title>
  <!-- CORE CSS-->
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">

<style type="text/css">
html,
body {
    height: 100%;
}
html {
    display: table;
    margin: auto;
}
body {
    display: table-cell;
    vertical-align: middle;
}
.margin {
  margin: 0 !important;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    

  <div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel"> 
        <div class="row">
          <div class="input-field col s12 center">
            <img src="images/logo.png" alt="" 
                  class="responsive-img valign profile-image-login">
            <p class="center login-form-text">Register</p>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i> 
            <label for="username" class="center-align">Username</label>
              <br />
              <asp:TextBox ID="txtusername"    runat="server" class="validate" ></asp:TextBox>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-communication-email prefix"></i> 
            <label for="email" class="center-align">Email</label>
              <br />
              <asp:TextBox ID="txtemail"    runat="server" class="validate" ></asp:TextBox>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
             <label for="password">Password</label>
              <br />
              <asp:TextBox ID="txtpassword"    runat="server" TextMode="Password"></asp:TextBox>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
              <label for="passwordagain">Re-type password</label>
              <br />
              <asp:TextBox ID="txtpasswordagain"    runat="server" TextMode="Password"></asp:TextBox>
           
          </div>
        </div>
        <div class="row">
            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
        <div class="row">
          <div class="input-field col s12">
              <asp:Button ID="Button1"  class="btn waves-effect waves-light col s12" runat="server" Text="Register Now" />
            
          </div>
          <div class="input-field col s12">
            <p class="margin center medium-small sign-up">Already have an account? 
                <a href="login.aspx">Login</a></p>
          </div>
        </div> 
    </div>
  </div>
  
</form>
</body>
</html>
