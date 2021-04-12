<cfset movie_list=ArrayNew(2)><!---二次元配列--->
<cfquery name="get_movie" datasource="sample"><!---全件取得--->
    select *
    from movie
    ORDER BY "movieID" DESC
    LIMIT 5; 
</cfquery>

<cfoutput query="get_movie">
    <cfset count = get_movie.recordcount><!---recordの数--->
</cfoutput>

<html>
    <head>
        <title>映画リスト</title>
    </head>

    <body>
        <h1>映画リスト</h1>
        <cfoutput>
            最近登録された#count#件です。<br>
        </cfoutput>
        <hr>

        <!---currentRowは現在処理している行のこと--->
        <cfloop query="get_movie"><!---全件取得した数だけ繰り返す--->
            <cfset movie_list[CurrentRow][1]=get_movie.year[CurrentRow]><!---配列のmovie_listに年を詰める--->
            <cfset movie_list[CurrentRow][2]=get_movie.title[CurrentRow]><!---配列の2番目に入れるtitleを--->
        </cfloop>

        <table border="1">
            <tr>
                <td>年</td>
                <td>タイトル</td>
            </tr>
            <tr>
                <cfloop index="loop" from="1" to="#count#">
                    <td>
                        <cfoutput>#movie_list[loop][1]#</cfoutput>
                    </td>
                    <td>
                        <cfoutput>#movie_list[loop][2]#</cfoutput>
                    </td>
                </tr>
                </cfloop>
            </table>
    </body>
</html>