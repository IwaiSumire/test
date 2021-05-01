<cfprocessingdirective pageencoding="utf-8">

<cfoutput>
    <html>
        <head>

        </head>
        <body>
            <h2>エラーが発生しました</h2>
            <cfdump  var="#error.RootCause#">
        </body>
    </html>
</cfoutput>