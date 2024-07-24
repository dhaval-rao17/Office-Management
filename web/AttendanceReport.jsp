<%-- 
    Document   : AttendanceReport
    Created on : 1 Mar, 2024, 6:09:45 PM
    Author     : raodh
--%>

<%@page import="DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>
<div>
    <center>
        <br>
        <span style="font-size: 30px;color: black;font-style: Bold"><u>Attendance Report</u></span>
        <br>
        <br>
        <br>
        
        <table width="1000" cellspacing="0" cellpadding="5" border="1" bgcolor="lightpink">
            <tr bgcolor="lightblue"><td>S No.</td><td>Employee Code</td><td>Employee Name</td><td>Employee Gender</td>
                <td>Email Address</td><td>Attendance Date</td><td>Time In</td><td>Time Out</td></tr>
            <%
            String user=session.getAttribute("user").toString();
            DBConnect db=new DBConnect();
            db.pstmt=db.con.prepareStatement("select emp_mstr.ecode,emp_mstr.ename,emp_mstr.egender,"
                    + "emp_mstr.email,emp_attendance.atnd_date,emp_attendance.time_in,emp_attendance.time_out "
                    + "FROM emp_mstr,emp_attendance where emp_mstr.ecode=emp_attendance.ecode and "
                    + "emp_attendance.ecode=?");
            db.pstmt.setString(1,user);
            db.rst=db.pstmt.executeQuery();
            int count=1;
            while(db.rst.next())
            {
                out.println("<tr><td bgcolor=dodgerblue style='color:white;'>"+count+"</td>"
                        + "<td>"+db.rst.getString(1)+"</td>"
                        + "<td>"+db.rst.getString(2)+"</td>"
                        + "<td>"+db.rst.getString(3)+"</td>"
                        + "<td>"+db.rst.getString(4)+"</td>"
                        + "<td>"+db.rst.getString(5)+"</td>"
                        + "<td>"+db.rst.getString(6)+"</td>"
                        + "<td>"+db.rst.getString(7)+"</td></tr>");
                count++;
            }
                
            %>
        </table>
    </center>
</div>

