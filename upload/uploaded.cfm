<cfquery datasource="sample" name="get_image">
    select *
    from uploadfiles
</cfquery>

<html>
    <heed>
        <title>画像とメッセージ</title>
    </head>

    <body>
   
        
        <cfoutput query="get_image">
            <table border="0">
                <tr>
                    <td align="middle"><img src="c:\pic\#image#"></td>
                    <td align="middle">#message#</td>
                </tr>
            </tabre>

        </cfoutput>
  
    </body>
</html>