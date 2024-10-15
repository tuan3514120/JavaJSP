<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<c:url value="css/dangki.css"/>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form class="form-signup" action="sign-up" method="post" >
        <h1>Register</h1>
        <div class="form-field">
            <i class="fas fa-phone-alt"></i>
            <input name="user" type="text" id="user-name" placeholder="Số di động hoặc email">
        </div>
        <div class="form-field">
            <i class="fas fa-lock"></i>
            <input name="pass" type="password" id="user-pass" placeholder="Mật khẩu mới">
        </div>
        <div class="form-field">
            <i class="fas fa-lock"></i>
            <p style="color: red">${mess}</p>
            <input name="repass" type="password" id="user-repeatpass" placeholder="Nhập lại mật khẩu">
        </div>

        <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Register</button>
            <button class="btn btn-primary btn-block"><a href="<c:url value="login.jsp"/>">Back</button>


    </form>
</div>




<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>

