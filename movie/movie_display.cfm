<cfquery datasource="sample" name="oscar">
    select *
    from oscar
</cfquery><!--- 年とタイトルと取得し、get_movieに入れておく--->
<cfquery datasource="sample" name="all">
    select *
    from movie
</cfquery>

<html>

    <head>
       <title>映画リスト</title>
    </head>

<body>

    <br>
    <a href="./add_movie.cfm">
        <button type="button">映画を追加する</button>
        </a>
    
<br>
<h1>全部<h1>
            <table border="3">
                <tr>
                    <td><b>年</b></td>
                    <td><b>タイトル</b></td>
                    <td><b>詳細</b></td>
                    <td><b>更新</b></td>
                    <td><b>消去</b></td>
                </tr>
                    <cfoutput query="all">
    
                        <tr>
                            <td>#year#</td>
                            <td>#title#</td>
                            <td>
                                <a href="./list_movie.cfm?movieID=#movieID#">
                                <button type="button">詳細</button>
                                </a>
                            </td>
                            <td>
                                <a href="./update_movie.cfm?movieID=#movieID#">
                                <button type="button">更新</button>
                                </a>
                            </td>
                            <td>
                                <a href="./deleting_movie.cfm?movieID=#movieID#">
                                <button type="button">消去</button>
                                </a>
                            </td>
                        </tr>
    
                    </cfoutput>
                </table>
                <br>

                <cfquery datasource="sample" name="join">
                    select movie.title,oscar.title,movie.year,oscar.annual
                    from movie,oscar
                    where movie.title=oscar.title
                </cfquery>

                <h1>オスカーの映画</h1>

                 <!---ボーダーあり、CFCOLのヘッダー表示、HTML形式--->
                <cftable  query="oscar" colheaders htmltable border>
                    <cfcol  header="年"  text="#annual#">
                    <cfcol  header="タイトル"  text="#title#">

                </cftable>
</body>

</html>