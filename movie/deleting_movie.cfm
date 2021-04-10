<cfquery datasource="sample">
    delete from movie
    where "movieID" = #movieID#
</cfquery>


<cfoutput>

<h2>消去しました</h2>

<a href="./movie_display.cfm">表に戻る</a>
</cfoutput>