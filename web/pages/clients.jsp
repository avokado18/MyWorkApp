<%@ page import="model.Client" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Clients</title>
</head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>
<div ng-app="" ng-init="firstName='John'">

    <p>The name is <span ng-bind="firstName"></span></p>

</div>
<h1>hi</h1>
<table>
    <tr>иди в пизду. хуй буду больше помогать
        <th>
            Id и куда ты блять ее установилаЯ,  нае?!!!!е установила блять, теб
        <th>я жду
            Фамилия
        </th>
        <th>
            Имя
        </th>
        <th>
            Отчество
        </th>
        <th>
            Дата рождения
        </th>
        <th>
            Номер счета
        </th>
    </tr>
    <%
        List<Client> clients = (List<Client>) request.getAttribute("clients");
        for (Client client:clients){%>
            <tr>
                <td>
                    <%=client.getId()%>
                </td>
                <td>
                    <%=client.getSurname()%>
                </td>
                <td>
                    <%=client.getName()%>
                </td>
                <td>
                    <%=client.getPatronymic()%>
                </td>
                <td>
                    <%=new SimpleDateFormat("dd-MM-yyyy").format(client.getBirthday())%>
                </td>
                <td>
                    <%=client.getAccNumber()%>
                </td>
                <td>
                    Изменить
                </td>
                <td>
                    Удалить
                </td>
            </tr>
        <%}
    %>
</table>
<form method="post" action="/add" >
    <table>
        <tr>
            <td><label for="Id">Id</label></td>
            <td><input id="Id" name="Id"/></td>
        </tr>
        <tr>
            <td><label for="Surname">Surname</label></td>
            <td><input id="Surname" name="Surname"/></td>
        </tr>
        <tr>
            <td><label for="Name">name</label></td>
            <td><input id="Name" name="Name"/></td>
        </tr>
        <tr>
            <td><label for="PatronymicName">PatronymicName</label></td>
            <td><input id="PatronymicName" name="PatronymicName"/></td>
        </tr>
        <tr>
            <td><label for="Birthday">Birthday</label></td>
            <td><input id="Birthday" name="Birthday"/></td>
        </tr>
        <tr>
            <td><label for="AccountNumber">Account Number</label></td>
            <td><input id="AccountNumber" name="AccountNumber"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>