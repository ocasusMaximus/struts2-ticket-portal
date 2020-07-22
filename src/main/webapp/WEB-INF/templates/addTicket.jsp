<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Apache Struts 2</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/struts2style.css"/>
    <link rel="icon" type="image/svg" href="/images/strut2-logo.png"/>
</head>
<body>
<nav class="navbar navbar-expand-lg py-3 shadow-sm">
    <div class="container">
        <a href="${pageContext.request.contextPath}/" class="navbar-brand">
            <!-- Logo Image -->
            <img src="/images/strut2-logo.png" width="55" height="40" alt="">
            <span class="text-uppercase font-weight-bold">Apache Struts 2</span>
        </a>

        <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>

        <div id="navbarSupportedContent" class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="${pageContext.request.contextPath}/" class="nav-link">Seznam
                    rezervací</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/addTicket" class="nav-link">Nová
                    rezervace</a></li>
            </ul>
        </div>
    </div>
</nav>


    <div class="row justify-content-center">
        <s:form   action="createTicket" method="post">


            <div class="row justify-content-center">
                <h1>Nová rezervace</h1>
            </div>

            <s:hidden name="ticket.id"/>
            <label>Film: </label>
            <select class="custom-select custom-select-sm mb-3" name="ticket.movie">
                <option value="Star Wars: Pomsta Sithů">Star Wars: Pomsta Sithů</option>
                <option value="Avengers Endgame">Avengers Endgame</option>
                <option value="Pulp Fiction">Pulp Fiction</option>
                <option value="John Wick">John Wick</option>
            </select>
            <label>Jazyk: </label>
            <select class="custom-select custom-select-sm mb-3" name="ticket.language">
                <option value="Angličtina">Angličtina</option>
                <option value="Čeština">Čeština</option>
            </select>
            <label>Sál: </label>
            <select class="custom-select custom-select-sm mb-3" name="ticket.hall">
                <option value="J2">J2</option>
                <option value="J3">J3</option>
            </select>
            <label>Počet míst: </label>
            <input class="form-control form-control-sm" min="1" required name="ticket.numberOfSeats"
                   type="number">
            <div class="row justify-content-center">
                <input type="submit" class="button_b" value="Odeslat"/>
            </div>
            <div class="row justify-content-center">
                <input type="reset" class="button_b" value="Reset"/>

            </div>

        </s:form>
    </div>

<div class="row justify-content-center">
    <s:form   action="updateTicket" method="post">


        <div class="row justify-content-center">
            <h1>Úprava rezervace</h1>
        </div>

        <s:hidden name="id"/>
        <label>Film: </label>
        <select class="custom-select custom-select-sm mb-3" name="ticket.movie">
            <option value="Star Wars: Pomsta Sithů">Star Wars: Pomsta Sithů</option>
            <option value="Avengers Endgame">Avengers Endgame</option>
            <option value="Pulp Fiction">Pulp Fiction</option>
            <option value="John Wick">John Wick</option>
        </select>
        <label>Jazyk: </label>
        <select class="custom-select custom-select-sm mb-3" name="ticket.language">
            <option value="Angličtina">Angličtina</option>
            <option value="Čeština">Čeština</option>
        </select>
        <label>Sál: </label>
        <select class="custom-select custom-select-sm mb-3" name="ticket.hall">
            <option value="J2">J2</option>
            <option value="J3">J3</option>
        </select>
        <label>Počet míst: </label>
        <input class="form-control form-control-sm" min="1" required name="ticket.numberOfSeats"
               type="number">
        <div class="row justify-content-center">
            <input type="submit" class="button_b" value="Odeslat"/>
        </div>
        <div class="row justify-content-center">
            <input type="reset" class="button_b" value="Reset"/>

        </div>

    </s:form>
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
