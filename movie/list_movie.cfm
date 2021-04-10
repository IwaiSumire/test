<cfquery datasource="sample" name="list">
    select title,year,actor,company
    from movie
    where "movieID" = #movieID#
</cfquery>

<h2>詳細<h2>

<cftable  query="list" colheaders htmltable border>

    <cfcol  header="タイトル"  text="#title#">
    <cfcol  header="年"  text="#year#">
    <cfcol  header="俳優女優"  text="#actor#">
    <cfcol  header="国"  text="#company#">
</cftable>

<br>
<a href="./movie_display.cfm">表に戻る</a>