<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/struts2style.css"/>
</head>
<body>
<nav class="navbar navbar-expand-lg py-3 shadow-sm">
    <div class="container">
        <a href="${pageContext.request.contextPath}/tickets" class="navbar-brand">
            <!-- Logo Image -->
            <img src="/images/strut2-logo.png" width="55" height="40" alt="">
            <span class="text-uppercase font-weight-bold">Apache Struts2</span>
        </a>

        <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>

        <div id="navbarSupportedContent" class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="${pageContext.request.contextPath}/tickets" class="nav-link">Seznam
                    rezervací</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/addTicket" class="nav-link">Nová
                    rezervace</a></li>
            </ul>
        </div>
    </div>
</nav>
<div>
    <table class="table-list">
        <thead>
        <th>Název</th>
        <th>Jazyk</th>
        <th>Počet míst</th>
        <th>Sál</th>
        <th>Smazání</th>
        <th>Změna</th>
        </thead>
        <tbody>
        <s:iterator value="ticketList">
            <tr>
                <td><s:property value="movie"/></td>
                <td><s:property value="language"/></td>
                <td><s:property value="numberOfSeats"/></td>
                <td><s:property value="hall"/></td>
                <td>
                    <s:form method="post" action="deleteTicket">
                        <s:hidden name="id" value="%{id}"/>

                        <s:submit class="button_a" value="Smazat"/>
                    </s:form></td>
                <td>
                    <s:form method="get" action="editTicket" object="ticket">

                        <s:hidden name="id" value="%{id}"/>

                        <s:submit class="button_a" value="Změnit"/>
                    </s:form></td>

            </tr>
        </s:iterator>
        </tbody>
        <!--  <td colspan="1" class="form-buttons"><input type="submit" value="Smazat Vse"/></td>-->
    </table>
</div>
<div id="deleteAllButton">
    <s:form method="post" action="deleteAllTickets">
        <button class="button_a" type="submit">Smazat Vse</button>
    </s:form>
</div>
</body>
</html>
