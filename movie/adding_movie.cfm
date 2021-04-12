<cfinsert  datasource="sample"  tablename="movie">

<html>
    <title>データ追加</title>
</html>

<body>


<h1>リストに映画が追加されました</h1>


<cfoutput>[#title#]が追加されました</cfoutput>
<br>
<br>

<a href="./movie_display.cfm">表に戻る</a>


</body>
</html>