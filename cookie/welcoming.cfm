<html>
    <head>
        <title>ようこそ音楽館へ</title>
    </head>
    <body>
        <cfoutput>
            <h3>#dateTimeFormat(now(),"YYYY年 MM月 dd日")#</h3><br>

<cfif form.sex EQ 'man'>
    <h1>#form.name#くん</h1>
<cfelse>
    <h1>#form.name#ちゃん</h1>
</cfif>

<br>

<cfif IsDefined("cookie.times")>
<h3>ここに来られたのは
    <cfif cookie.times EQ '1'>
        初めてですね
        <cfelse>
        #cookie.times# 回目ですね
    </cfif>
</h3>
</cfif>


        </cfoutput>
        
    </body>
</html>