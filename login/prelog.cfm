<cfif isDefined("url.badlogin")>
    <center>再試行をしてください。認証に失敗しました。</center>
</cfif>

<html>
    <head>
        <title>メンバーログイン</title>
    </head>

    <body bgcolor="#818EED" text="White">
        <center>
            <h3>
                <font size="5" color="#FFFF00">
                    メンバーログイン
                </font>
            </h3>
            <br><br>

            <h3>会員の方はこちら</h3>
            
            <form action="dologin.cfm" method="post" target="_top">
                <!---フレーム分割を解除してウィンドウ全体に表示--->

            ユーザID：
            <input type="text" size="20" mexlength="50" name="userid"><br>
            パスワード：
            <input type="password" name="password"><br>

            <input type="submit" value="ログイン">
            
            </form>
        </center>

    </body>
</html>