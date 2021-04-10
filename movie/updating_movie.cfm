<cfupdate  datasource="sample"  tablename="movie">

    <cfoutput>
        <html>
        <head>
            <title>データ更新</title>
        </head>

        <body>

            <h1>#title#の情報が更新されました<h1>
                <br>
                <br>

                <a href="./movie_dispaly.cfm">ここでリストを確認</a>
        </body>
    </html>

    </cfoutput>