<html>
    <head>
        <title>プロフィール</title>
    </head>

    <body>
        <h1>プロフィール</h1>
        <cfform action="profile.cfm" Method="post">

            <b>性：</b>
            <cfinput  type="text" name="lname">
            <br>
            <b>名：</b>
            <cfinput type="text" name="fname">
            <br>
            <input type="submit" value="送信">
            <input type="Reset" value="リセット">
        </cfform>

    </body>
</html>
