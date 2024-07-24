<%-- 
    Document   : ChangePassword
    Created on : 1 Mar, 2024, 6:17:24 PM
    Author     : raodh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>
<div>
    <center>
        <br>
        <spna style="font-size:30px;color: orange;font-style:arabic ">Change Password</spna>
        <br>
        <br>
        
         <form action="ChangePassword">
            <table width="600" border="2"cellpadding="30">
                <tr><td>Enter Old Password</td><td><input type="password" name="opswd"</td></tr>
                <tr><td>Enter New Password</td><td><input type="password" name="npswd"</td></tr>
                <tr><td>Enter Confirm Password</td><td><input type="password" name="cpswd"</td></tr>
                <tr><td><input type="submit" value="submit"></td><td><input type="reset"name="reset"</td></tr>
            </table>
        </form>
    </center>
</div>