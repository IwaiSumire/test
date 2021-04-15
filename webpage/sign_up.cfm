<html>
    <head>
        <title>会員登録</title>
    </head>

    <body bgcolor="#818eed" text="white">
        <center>
            <cfif isDefined("url.dup")>
                <p>申し訳ありません。そのIDは既に使われています</p>
            </cfif>

            <cfif isDefined("url.lack")>
                <p id="kuu">空欄があります。すべて埋めてください</p>
            </cfif>

            <h3>登録情報を登録してください</h3>

            <form action="register.cfm" method="post" target="_top">

                  性：<input type="text" name="iname"><br>
                  名：<input type="text" name="fname"><br>
                  ID：<input type="text" name="userid"><br>
        　　　　　email:<input type="text" name="email"><br>
                 pass:<input type="password" name="password"><br><br>

                <input type="submit" value="登録">

            </form>

        </center>
    </body>
</html>