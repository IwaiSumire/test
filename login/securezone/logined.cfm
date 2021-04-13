<cfquery datasource="sample" name="details">
    select *
    from users
    where userid='#cookie.uname#'
</cfquery>

<html>
    <head>
        <title>承認済</title>
    </head>
    <body>
        <h1>おめでとうございます</h1>

        <cfif isDefined("cookie.uname")>
            <cfoutput query="details">
                <h3>[#fname##iname#]は正規ユーザとして認証されました</h3>
                
                <h2>user情報<h2>

                セキュリティid #secureid#<br>
                ユーザid #userid#<br>
                苗字 #fname#<br>
                名前 #iname#<br>
                メールアドレス #email#<br>
                password(文字数)
                <cfloop index="kome" from="1" to="#len(password)#">
                    *
                </cfloop>

            </cfoutput>
        </cfif>

        
    </body>
</html>