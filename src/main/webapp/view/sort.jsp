<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net/el"%>
<%@page pageEncoding="UTF-8"%>
<html lang="en">
<head>
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
<h1>Все записи</h1> <a href="calculator">Перейти к новому расчету</a>
<display:table name="results" sort="list" requestURI="/sort">
            <display:column property="period" title="Период" sortable="true" headerClass="sortable" />
            <display:column property="amountOfRevenue" title="Сумма выручки от реализации товаров" sortable="false"/>
            <display:column property="nonOperatingIncome" title="Сумма внереализационных доходов" sortable="false"/>
            <display:column property="worker" title="Наличие места основной работы" sortable="false"/>
            <display:column property="invalid" title="Наличие права на льготы" sortable="false"/>
            <display:column property="widower" title="Являетесь ли Вы вдовой (вдовцом)"/>
            <display:column property="amountOfChildren" title="Количество детей до 18 лет" sortable="false"/>
            <display:column property="amountOfSickChildren" title="Количество детей-инвалидов" sortable="false"/>
            <display:column property="amountOfDependents" title="Количество иждивенцев" sortable="false" />
            <display:column property="insurance" title="Сумма расходов за выбранный период по страховым взносам" sortable="false" />
            <display:column property="education" title="Сумма расходов за выбранный период на получение первого платного образования" sortable="false"/>
            <display:column property="housing" title="Сумма расходов за выбранный период на строительство либо приобретение жилья" sortable="false"/>
            <display:column property="business" title="Сумма расходов за выбранный период, связанных с предпринимательской деятельностью" sortable="false"/>
            <display:column property="incomeTax" title="Сумма подоходного налога к уплате" sortable="true" headerClass="sortable" />
        </display:table>
</body>
</html>