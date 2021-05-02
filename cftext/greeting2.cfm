<cfajaxproxy cfc="greeting" jsclassname="jsclassname">
    <html>
        <head>
            <script type="text/javascript">
                function syaHello() {
                    var myname = document.getElementById('myname').value;
                    var r = new jsclassname();
                    r.setCallbackHandler(displayMessage)
                    r.syaHello(myname)
                }

                function displayMessage(getMessage) {
                    document.getElementById('MessageOutput').innerHTML = getMessage
                }
            </script>
        </head>
        <body>
            <input type="text" id="myname" size="10">
            <input type="button" value="送信" onclick="syaHello()">
            <span id="MessageOutput"></span>
        </body>
    </html>