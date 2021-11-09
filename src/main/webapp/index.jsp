<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/9/2021
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>model.Customer</title>

  </head>
  <body>
  <%
    ArrayList<Customer> customers = new ArrayList<>();
    Customer customer = new Customer("Dinh", "1986", "Nam Dinh","dinh.jpg");
    Customer customer1 = new Customer("A Toàn", "2000", "Vinh Yen","dinh.jpg");
    Customer customer2 = new Customer("A Thao", "1960", "Phu Tho","dinh.jpg");
    Customer customer3 = new Customer("Mr.Tuan", "2007", "Hai Phong","dinh.jpg");
    customers.add(customer);
    customers.add(customer1);
    customers.add(customer2);
    customers.add(customer3);
    request.setAttribute("ds",customers);
  %>
  <table border="1px" >
    <tr>
      <th colspan="4">Danh sách khách hàng</th>
    </tr>
    <tr>
      <td>Tên</td>
      <td>Ngày sinh</td>
      <td>Địa chỉ</td>
      <td>Ảnh</td>

    </tr>

<%--      <%--%>
<%--        for (Customer c: customers) {--%>
<%--          %>--%>
<%--    <tr>--%>
<%--      <td><%=c.getName()%></td>--%>
<%--      <td><%=c.getDateOfBirth()%></td>--%>
<%--      <td><%=c.getAddress()%></td>--%>
<%--      <td><img height="100px" width="150px" src="<%=c.getImage()%>"></td>--%>
<%--    </tr>--%>
<%--      <%--%>
<%--        }--%>
<%--      %>tr--%>
<c:forEach items="${ds}" var="list" >
  <tr>
    <td>${list.name}</td>
    <td>${list.dateOfBirth}</td>
    <td>${list.address}</td>
    <td><img width="150px" height="150px" src="${list.image}"> </td>
  </tr>
</c:forEach>

  </table>
  </body>
</html>
