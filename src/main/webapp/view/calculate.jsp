<!DOCTYPE HTML>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Calculator</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="static.js"></script>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2
        }
    </style>
</head>
<body>
<h2>Калькулятор  расчета</h2>
<form:form method="POST" action="calculator">
    <table>
        <tr>

            <td><form:label path="id" hidden="true">id</form:label></td>
            <td><form:input type="hidden" path="id"/></td>
        </tr>
        <tr>
            <td><form:label path="period">Период, за который производится расчет:</form:label></td>
            <td>
                <form:select path = "period">
                    <form:options items = "${periodList}" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td><form:label path="amountOfRevenue">Сумма выручки от реализации товаров (работ, услуг),
                имущественных прав за выбранный период (без налога на добавленную стоимость), руб :</form:label></td>
            <td><form:input required="required" onkeyup="this.value=parseInt(this.value) | 0" path="amountOfRevenue"/>
            </td>
        </tr>

        <tr>
            <td><form:label path="nonOperatingIncome">Сумма внереализационных доходов за выбранный период
                (без налога на добавленную стоимость), руб :</form:label></td>
            <td><form:input required="required" onkeyup="this.value=parseInt(this.value) | 0" path="nonOperatingIncome"/>
            </td>
        </tr>
        <tr>
            <td><form:label path="worker">Наличие места основной работы:</form:label></td>
            <td><form:radiobutton onclick="dis()"  path = "worker" value = "true" label = "Да" />
                <form:radiobutton onclick="ena()" path = "worker" value = "false" label = "Нет" /></td>
        </tr>
        <tr>
            <td><form:label path="invalid">Наличие права на льготы (инвалид I или II группы,
                инвалид с детства, участник боевых действий на территории других государств и др.):</form:label></td>
            <td><form:radiobutton path = "invalid" value = "true" label = "Да" />
                <form:radiobutton path = "invalid" value = "false" label = "Нет" /></td>
        </tr>
        <tr>
            <td><form:label path="widower">Являетесь ли Вы вдовой (вдовцом),
                одиноким родителем, приемным родителем, опекуном или попечителем:</form:label></td>
            <td><form:radiobutton path = "widower" value = "true" label = "Да" />
                <form:radiobutton path = "widower" value = "false" label = "Нет" /></td>
        </tr>
        <tr>
            <td><form:label path="amountOfChildren">Количество детей до 18 лет:</form:label></td>
            <td><form:input required="required" onkeyup="this.value=parseInt(this.value) | 0" path="amountOfChildren"/></td>
        </tr>
        <tr>
            <td><form:label path="amountOfSickChildren">Количество детей-инвалидов:</form:label></td>
            <td><form:input required="required" oninput="sick(this)" onkeyup="this.value=parseInt(this.value) | 0" path="amountOfSickChildren"/></td>
        </tr>
        <tr>
            <td><form:label path="amountOfDependents">Количество иждивенцев:
            </form:label></td>
            <td><form:input required="required" onkeyup="this.value=parseInt(this.value) | 0" path="amountOfDependents"/></td>
        </tr>
        <tr>
            <td><form:label path="insurance">
                <br>Сумма расходов за выбранный период по страховым взносам по договорам добровольного страхования жизни
                <br>и дополнительной пенсии,заключенным на срок не менее трех лет, а также по договорам добровольного страхования медицинских расходов, руб :
            </form:label></td>
            <td><form:input required="required" onkeyup="this.value=parseInt(this.value) | 0" path="insurance"/></td>
        </tr>
        <tr>
            <td><form:label path="education">Сумма расходов за выбранный
                период на получение первого платного образования своего либо близких родственников, руб :
            </form:label></td>
            <td><form:input required="required" onkeyup="this.value=parseInt(this.value) | 0" path="education"/></td>
        </tr>
        <tr>
            <td><form:label path="housing">Сумма расходов за выбранный период на строительство либо
                приобретение жилья для нуждающихся в улучшении жилищных условий, руб :
            </form:label></td>
            <td><form:input required="required" onkeyup="this.value=parseInt(this.value) | 0" path="housing"/></td>
        </tr>
        <tr>
            <td><form:label path="business">Сумма расходов за выбранный период, связанных с
                осуществлением предпринимательской деятельности, руб :
            </form:label></td>
            <td><form:input required="required" oninput="checkVal(this)" onkeyup="this.value=parseInt(this.value) | 0" path="business"/></td>
        </tr>

        <tr>
            <td><input type="submit" value="Рассчитать"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>