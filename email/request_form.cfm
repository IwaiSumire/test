<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <title>ご意見入力</title>
    </head>

<body>
    

    <form action="request_send.cfm" method="POST">
        Emailアドレス：<br>
        <input type="text" name="Email_address" size="30" maxlength="30">
        <br>
        ご意見：<br>
        <textarea name="RequestBody" rows="6" cols="30"></textarea>
        <br>
        <input type="submit" value="送信">
    </form>

</body>

</html>