<html>
    <head>E-mail</head>

    <body>
        <cfif isDefined("url.lack")>
            <p>
                空欄がありました。全部埋めてください
            </p>
        </cfif>
        <h1>emailを送る</h1>

        <form action="mail.cfm" method="post">
            <p>
                <h3>あなたの名前：</h3>
                <input type="text" name="name" size="30" maxlength="30">
                <br>

                <h3>送信先メールアドレス：</h3>
                <input type="text" name="email" size="30" maxlength="30">

                <h3>あなたのメールアドレス：</h3>
                <input type="email" name="remail" size="30" maxlength="30">
                <br>

                <h3>メールタイトル：</h3>
                <input type="text" size="20" maxlength="50" name="subject">

                <h3>メッセージ：</h3>
                <textarea name="message" Row="6" clos="50"></textarea>
                <br><br>

                <input type="submit" value="送信">
                <input type="reset" value="リセット">
        </form>

    </body>

</html>