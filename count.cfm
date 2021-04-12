<html>
    <head>
        <titile>ループ処理</titile>
    </head>

    <body>     
        <h1>２つおきの数字のカウント</h1>
        <cfloop index="temp" from="1" to="10" step="2">
            <cfoutput>
                <font size="4">#temp#,</font>
            </cfoutput>
        </cfloop>

<h1>ループカウント</h1>
<cfloop index="index" from="1" to="100">
    <cfoutput>
        #index#回
    </cfoutput>
    
</cfloop>

<cfset name = "岩井菫">
<br>

<cfoutput>#len(name)#</cfoutput><br>
<cfoutput>#left(name,2)#</cfoutput><br>
<cfoutput>#right(name, 2)#</cfoutput><br>
<cfoutput>#reverse(name)#</cfoutput><br>
<cfoutput>#find('井', name)#</cfoutput><br>

    </body>
</html>