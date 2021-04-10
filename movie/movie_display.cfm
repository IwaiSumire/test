<cfquery datasource="sample" name="amerika">
    select year,title
    from movie
    where company='アメリカ'
</cfquery><!--- 年とタイトルと取得し、get_movieに入れておく--->
<cfquery datasource="sample" name="all">
    select *
    from movie
</cfquery>

<html>
    <head>
       
    </head>

<body>
    <h1>映画リストアメリカのみ<h1>
        <table border="3">
            <tr>
                <td><b>年</b></td>
                <td><b>タイトル</b></td>
            </tr>
                <cfoutput query="amerika">

                    <tr>
                        <td>#year#</td>
                        <td>#title#</td>
                    </tr>

                </cfoutput>
            </table>
<br>
<h1>全部<h1>
            <table border="3">
                <tr>
                    <td><b>年</b></td>
                    <td><b>タイトル</b></td>
                </tr>
                    <cfoutput query="all">
    
                        <tr>
                            <td>#year#</td>
                            <td>#title#</td>
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
                <cftable  query="join" colheaders htmltable border>
                    <cfcol  header="年"  text="#year#">
                    <cfcol  header="タイトル"  text="#title#">
                    <cfcol  header="オスカー年度"  text="#annual#">

                </cftable>
</body>

</html>