function dis() {
    if (document.getElementById("worker1").checked) {
        document.getElementById("invalid1").setAttribute("disabled","disabled");
        document.getElementById("invalid2").setAttribute("disabled","disabled");
        document.getElementById("widower1").setAttribute("disabled","disabled");
        document.getElementById("widower2").setAttribute("disabled","disabled");
        document.getElementById("amountOfChildren").setAttribute("disabled","disabled");
        document.getElementById("amountOfSickChildren").setAttribute("disabled","disabled");
        document.getElementById("amountOfDependents").setAttribute("disabled","disabled");
        document.getElementById("insurance").setAttribute("disabled","disabled");
        document.getElementById("education").setAttribute("disabled","disabled");
        document.getElementById("housing").setAttribute("disabled","disabled");

        document.getElementById("invalid1").removeAttribute("required");
        document.getElementById("invalid2").removeAttribute("required");
        document.getElementById("widower1").removeAttribute("required");
        document.getElementById("widower2").removeAttribute("required");
        document.getElementById("amountOfChildren").removeAttribute("required");
        document.getElementById("amountOfSickChildren").removeAttribute("required");
        document.getElementById("amountOfDependents").removeAttribute("required");
        document.getElementById("insurance").removeAttribute("required");
        document.getElementById("education").removeAttribute("required");
        document.getElementById("housing").removeAttribute("required");

        document.getElementById("invalid1").checked = false;
        document.getElementById("invalid2").checked = false;
        document.getElementById("widower1").checked = false;
        document.getElementById("widower2").checked = false;
        document.getElementById("amountOfChildren").value = "";
        document.getElementById("amountOfSickChildren").value = "";
        document.getElementById("amountOfDependents").value = "";
        document.getElementById("insurance").value = "";
        document.getElementById("education").value = "";
        document.getElementById("housing").value = "";
    }
}

function sick(input) {
    if (document.getElementById("widower1").checked) {
        var kids = document.getElementById('amountOfChildren').value;
        if (input.value > kids) {
            input.setCustomValidity('Проверьте вводимые данные!');
        } else {
            input.setCustomValidity('');
        }
    }
}

function checkVal(input) {
    var scnd = document.getElementById('amountOfRevenue').value;
    var thrd = document.getElementById('nonOperatingIncome').value;
    if (input.value > (+scnd + +thrd)) {
        input.setCustomValidity('Проверьте вводимые данные во 2ом и 3ем поле!');
    } else {
        input.setCustomValidity('');
    }
}

function ena() {
    if (document.getElementById("worker2").checked) {
        document.getElementById("invalid1").removeAttribute("disabled");
        document.getElementById("invalid2").removeAttribute("disabled");
        document.getElementById("widower1").removeAttribute("disabled");
        document.getElementById("widower2").removeAttribute("disabled");
        document.getElementById("amountOfChildren").removeAttribute("disabled");
        document.getElementById("amountOfSickChildren").removeAttribute("disabled");
        document.getElementById("amountOfDependents").removeAttribute("disabled");
        document.getElementById("insurance").removeAttribute("disabled");
        document.getElementById("education").removeAttribute("disabled");
        document.getElementById("housing").removeAttribute("disabled");

        document.getElementById("invalid1").setAttribute("required","required");
        document.getElementById("invalid2").setAttribute("required","required");
        document.getElementById("widower1").setAttribute("required","required");
        document.getElementById("widower2").setAttribute("required","required");
        document.getElementById("amountOfChildren").setAttribute("required","required");
        document.getElementById("amountOfSickChildren").setAttribute("required","required");
        document.getElementById("amountOfDependents").setAttribute("required","required");
        document.getElementById("insurance").setAttribute("required","required");
        document.getElementById("education").setAttribute("required","required");
        document.getElementById("housing").setAttribute("required","required");
    }
}