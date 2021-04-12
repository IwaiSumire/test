<cfquery datasource="sample" name="get_movie">
select title,company
from movie
</cfquery>

<html>
    <head>
        <title>映画のリスト</title>
    </head>

    <body>
<cfoutput query="get_movie">
    <cfswitch expression="#company#"><!---国が〇〇のとき--->
    <cfcase value="日本">
        <h3>[#title#]は日本の映画です</h3>
    </cfcase>
    <cfcase  value="ロシア">
        <h3>[#title#]はロシアの映画です</h3>
    </cfcase>
        <cfcase  value="アメリカ">
            <h3>[#title#]はアメリカの映画です</h3>
        </cfcase>
            <cfdefaultcase>
                <h3>[#title#]は日本・アメリカ・ロシア以外の映画です</h3>
            </cfdefaultcase>
           
    </cfswitch>
</cfoutput>

    </body>

</html>