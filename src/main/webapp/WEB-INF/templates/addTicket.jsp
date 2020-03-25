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
<div class="form-part">
    <h1>Nová rezervace</h1>
    <s:form action="createTicket" method="post">
        <table class="form-table">

            <s:hidden name="ticket.id"/>
            <tr>
                <s:select class="form-field" name="ticket.movie"
                          list="{'Star Wars: Pomsta sithů','Avengers: Endgame','Pulp Fiction', 'John Wick'}"
                          headerKey=""
                          label="Film"/>
            </tr>
            <tr>
                <s:select class="form-field" name="ticket.language" list="{'Angličtina','Čeština'}"
                          headerKey=""
                          label="Jazyk"/>
            </tr>
            <tr>
                <s:select class="form-field" name="ticket.hall" list="{'J2','J3'}"
                          headerKey=""
                          label="Sál"/>
            </tr>
            <tr>
                <s:textfield class="form-field" name="ticket.numberOfSeats" type="number" min="1" label="Počet Míst"/>
            </tr>
            <s:submit class="button_a" value="Odeslat"/>
            <s:reset class="button_a" value="Reset"/>
        </table>
    </s:form>

    </form>
</div>
<div class="form-part">
    <h1>Úprava rezervace</h1>
    <s:form action="updateTicket" method="post">
        <table class="form-table">

            <s:hidden name="ticket.id"/>
            <tr>
                <s:select class="form-field" name="ticket.movie"
                          list="{'Star Wars: Pomsta sithů','Avengers: Endgame','Pulp Fiction', 'John Wick'}"
                          headerKey=""
                          label="Film"/>
            </tr>
            <tr>
                <s:select class="form-field" name="ticket.language" list="{'Angličtina','Čeština'}"
                          headerKey=""
                          label="Jazyk"/>
            </tr>
            <tr>
                <s:select class="form-field" name="ticket.hall" list="{'J2','J3'}"
                          headerKey=""
                          label="Sál"/>
            </tr>
            <tr>
                <s:textfield class="form-field" name="ticket.numberOfSeats" type="number" min="1" label="Počet Míst"/>
            </tr>
            <s:submit class="button_a" value="Odeslat"/>
            <s:reset class="button_a" value="Reset"/>
        </table>
    </s:form>

    </form>
</div>
<div>
    <table class="table-list">
        <thead>
        <th>Sál</th>
        <th>Kapacita</th>
        </thead>
        <tbody>
        <s:iterator value="hallList">
            <tr>
                <td><s:property value="name"/></td>
                <td><s:property value="capacity"/></td>
            </tr>
        </s:iterator>
        </tbody>

    </table>
</div>
</body>
</html>
