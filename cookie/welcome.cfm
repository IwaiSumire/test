<cfif isDefined(cookie.times)><!---ParameterExists関数：cookieが存在するか？--->
    <cfcookie name="times" value="#evaluate(cookie.times+1)#" expires="7/17/2021"><!---存在していた時は１加える--->
    <!---expiresは有効期限のこと--->
    <cfelse>
        <cfcookie  name="times" value="1" expires="7/17/2021"><!---存在していなかったときは初めてなので１--->
</cfif>

    <html>
        <cfheader name="Expries" value="#now()#"></cfheader>
        <head>
            <titile>cookie検証</title>
        </head>

        <body>
            <h1>音楽を楽しむため<h1>
            <h4>まず、あなたの名前と性別を入力してください<h4>

                <form name="login" action="welcoming.cfm" method="post">
                    名前：
                    <input type="text" size="20" maxlength="50" name="name"><br>
                    性別
                    <input type="radio" name="sex" value="man">男性
                    <input type="radio" name="sex" value="woman">女性<br>
                    <input type="submit" value="Go">

                </form>
        </body>
    </html>

     