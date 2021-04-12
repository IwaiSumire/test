<cfquery datasource="sample">
    delete from movie
    where "movieID" = #movieID#
</cfquery>
<cflocation  url="./movie_display.cfm"><!---location以降は無視される--->

<cfoutput>

<h2>消去しました</h2>

<a href="./movie_display.cfm">表に戻る</a>
</cfoutput>