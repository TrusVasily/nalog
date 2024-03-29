<%@page pageEncoding="UTF-8"%>
<html>
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
<h2>Результаты</h2>
<table>

    <tr>
        <td>Период, за который производится расчет:</td>
        <td>${period}</td>
    </tr>
    <tr>
        <td><br>Сумма выручки от реализации товаров (работ, услуг),
            <br>имущественных прав за выбранный период (без налога на добавленную стоимость), руб.</td>
        <td>${amountOfRevenue}</td>
    </tr>
    <tr>
        <td>Сумма внереализационных доходов за выбранный период
            (без налога на добавленную стоимость), руб :</td>
        <td>${nonOperatingIncome}</td>
    </tr>
    <tr>
        <td>Наличие места основной работы:</td>
        <td>${(worker == true ? "Да" : "Нет")}</td>
    </tr>
    <tr>
        <td>Наличие права на льготы (инвалид I или II группы,
            инвалид с детства, участник боевых действий на территории других государств и др.):</td>
        <td>${(invalid == true ? "Да" : "Нет")}</td>
    </tr>
    <tr>
        <td>Являетесь ли Вы вдовой (вдовцом),
            одиноким родителем, приемным родителем, опекуном или попечителем:</td>
        <td>${(widower == true ? "Да" : "Нет")}</td>
    </tr>
    <tr>
        <td>Количество детей до 18 лет:</td>
        <td>${amountOfChildren}</td>
    </tr>
    <tr>
        <td>Количество детей-инвалидов:</td>
        <td>${amountOfSickChildren}</td>
    </tr>
    <tr>
        <td>Количество иждивенцев:</td>
        <td>${amountOfDependents}</td>
    </tr>
    <tr>
        <td>Сумма расходов за выбранный период по страховым взносам по договорам добровольного страхования жизни и дополнительной пенсии,
            <br>заключенным на срок не менее трех лет, а также по договорам добровольного страхования медицинских расходов, руб :</td>
        <td>${insurance}</td>
    </tr>
    <tr>
        <td>Сумма расходов за выбранный
            период на получение первого платного образования своего либо близких родственников, руб :</td>
        <td>${education}</td>
    </tr>
    <tr>
        <td>Сумма расходов за выбранный период на строительство либо
            приобретение жилья для нуждающихся в улучшении жилищных условий, руб :</td>
        <td>${housing}</td>
    </tr>
    <tr>
        <td>Сумма расходов за выбранный период, связанных с
            осуществлением предпринимательской деятельности, руб :</td>
        <td>${business}</td>
    </tr>
    <tr>
        <td>Сумма подоходного налога к уплате, руб. :</td>
        <td>${incomeTax}</td>
    </tr>
    <tr>
</table>

<a href="calculator">Повторить расчет</a>
<br> <a href="sort">Перейти ко всем данным</a>
</body>
</html>