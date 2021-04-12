<cfquery datasource=sample>
    update movie
    set year='#year#', 
        title='#title#',
        actor='#actor#',
        company='#company#'
    where "movieID" = #movieID#
</cfquery>
<cflocation  url="./movie_display.cfm">

    <cfoutput>
        <html>
        <head>
            <title>データ更新</title>
        </head>

        <body>

            <h1>#title#の情報が更新されました<h1>
                <br>
                <br>

                <a href="./movie_display.cfm">ここでリストを確認</a>
        </body>
    </html>

    </cfoutput>