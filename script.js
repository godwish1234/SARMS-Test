function loginType() {
    if (document.getElementById("Admin").onselect) {
        document.getElementById("textfield") = "Admin";
    }

    if (document.getElementById("Student").onselect) {
        document.getElementById("textfield") = "Student";
    }

    if (document.getElementById("Lecture").onselect) {
        document.getElementById("textfield") = "Lecture";
    }
}