<%-- 
    Document   : AddAttendance
    Created on : 7 Mar, 2024, 10:56:30 AM
    Author     : raodh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>
<br>
<style>

.abc{
    background-color: black;
}


/* CSS */
.button-73 {
  appearance: none;
  background-color: #FFFFFF;
  border-radius: 40em;
  border-style: none;
  box-shadow: #ADCFFF 0 -12px 6px inset;
  box-sizing: border-box;
  color: #000000;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,sans-serif;
  font-size: 1.2rem;
  font-weight: 700;
  letter-spacing: -.24px;
  margin: 0;
  outline: none;
  padding: 1rem 1.3rem;
  quotes: auto;
  text-align: center;
  text-decoration: none;
  transition: all .15s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-73:hover {
  background-color: #FFC229;
  box-shadow: #FF6314 0 -6px 8px inset;
  transform: scale(1.125);
}

.button-73:active {
  transform: scale(1.025);
}

@media (min-width: 768px) {
  .button-73 {
    font-size: 1.5rem;
    padding: .75rem 2rem;
  }
}
</style>
<br>
<div class="abc">
    <br>
    <br>
    <center>
        <span style="font-size: 40px;color: red;font-style: Normal;">Add Attendance</span>
        <br>
        
        <table width="500">
            <tr ><td><a href="Attendance?atnd=1"><input type="button" name="btn" class="button-73" value="Check  In" ></a></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><a href="Attendance?atnd=0"><input type="button" name="btn" value="Check Out" class="button-73"></a></td></tr>
        </table>
    </center>
</div>