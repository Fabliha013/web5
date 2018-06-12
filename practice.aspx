<%@ Page Language="C#" AutoEventWireup="true" CodeFile="practice.aspx.cs" Inherits="practice" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script>
        function upperCase(str) {
            if (str.length == 0)
                document.getElementById("upper").innerHTML = "";
            else {
                var httpr = new XMLHttpRequest();
                httpr.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("upper").innerHTML = this.responseText;
                    }
                };
                httpr.open("GET", "bkk.aspx?key=" + str, true);
                httpr.send();
            }
        }
    </script>
</head>
<body>
    <h3>Enter your Text</h3>
    <input type="text" placeholder="Enter Here" onkeyup="upperCase(this.value)" />
    <h2>Availability: <span id="upper"> </span></h2>
</body>
</html>