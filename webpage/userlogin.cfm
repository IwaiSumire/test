<cfif isDefined("url_badlogin")>
    <center>認証に失敗しました</center>
</cfif>

<html>
    <head>
        <title>ログイン</title>
    </head>
    <body bgcolor="#818EED" text="white">
        <center>
            <h3>メンバーログイン</h3>
       

        <font size="2" color="#ffffff">
            ここからログインしてください
        </font>
        <br><br>

        <form action="userdologin.cfm" method="post" target="_top">
            <!---リンク先のページが Web ブラウザ全体に表示されます。--->
        ユーザーID：<input type="text" name="userid"><br>
        パスワード：<input type="password" name="password"><br><br>

        <input type="submit" value="ログイン">

        </form>

        <br><br>

        新規ユーザ登録はこちらから
        <form action="sign_up.cfm" method="post" target="_top">
            <input type="submit" value="新規登録">
        </fomr>
    </center>
    </body>
</html>