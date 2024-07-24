
<%@page import="DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>
<div>
    <center>
        <br>
        <span style="font-size: 30px;color: red;font-style: italic">Employee List</span>
        <br>
        <br>
        <table width="1200"border="2" bgcolor="white" cellpadding="5"cellspacing="0">
            <tr bgcolor="yellow"><th>S.No</th><th>Employee Code</th><th>Employee Name</th><th>Date of Birth</th><th>Gender</th><th>Post</th><th>Address</th>
                <th>City</th><th>Contact</th><th>Email</th><th>ID Name</th><th>ID Number</th></tr>
            <%
                int count=1;
            try{
               DBConnect db=new DBConnect();
               db.pstmt=db.con.prepareStatement("Select * from emp_mstr");
               db.rst=db.pstmt.executeQuery();
               while(db.rst.next())
               {
                   out.println("<tr><td bgcolor=cyan>"+count+"</td><td>"+db.rst.getString(1)+"</td>"
                           + "<td>"+db.rst.getString(2)+"</td><td>"+db.rst.getString(3)+"</td>"
                           + "<td>"+db.rst.getString(4)+"</td><td>"+db.rst.getString(5)+"</td>"
                           + "<td>"+db.rst.getString(6)+"</td><td>"+db.rst.getString(7)+"</td>"
                           + "<td>"+db.rst.getString(8)+"</td><td>"+db.rst.getString(9)+"</td>"
                           + "<td>"+db.rst.getString(10)+"</td><td>"+db.rst.getString(11)+"</td></tr>");
                   count++;
               
               }
            }   
            catch (Exception e)
            {
                e.printStackTrace();
            }
            %>
        </table>
    </center>
</div>
