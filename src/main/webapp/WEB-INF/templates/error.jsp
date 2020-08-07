<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Apache Struts 2</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/struts2style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="icon" type="image/svg" href="/images/strut2-logo.png"/>

</head>
<div>
    <nav class="navbar navbar-expand-lg py-3 shadow-sm">
        <div class="container">
            <a href="${pageContext.request.contextPath}/" class="navbar-brand">
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
</div>
<div class="d-flex align-items-center justify-content-center">
    <div class="text-center">
        <h1>Kapacita sálu obsazena</h1>

        <h2>Prosím vyberte jiný sál nebo změntě počet míst</h2>
    </div>
</div>

<div class="deleteAllButton">
    <s:form method="get" action="">
        <button class="button_a" type="submit">Zpět</button>
    </s:form>
</div>


</body>
</html>
