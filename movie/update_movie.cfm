<cfif isDefined("movieID") is "no"><!---isDeFinedは存在するか？--->
<h1>errorが発生しました！！</h1>
<cfabort><!---idがなければここで処理を停止--->
</cfif>

<cfquery datasource="sample" name="update">
select year,title,actor,company
from movie
WHERE "movieID"=#movieID#
</cfquery>

<cfoutput query="update"><!---select結果を表示--->

<html>
    <head>
        <title>映画情報を更新</title>
    </head>
    <body>

    <h2>映画情報を更新する<h2>
        <form action="updating_movie.cfm" method="post">
<input type="hidden" name="movieID" value="#movieID#">

映画のタイトル：
<input type="text" name="title" size="30" maxlength="15" value="#Trim(title)#"><!---文字列から先頭と末尾のスペースと制御文字を削除します--->
<br>
公開された年：
<input type="text" name="year" size="15" maxlength="15" value="#Trim(year)#"><!---文字列から先頭と末尾のスペースと制御文字を削除します--->
<br>
主演俳優女優：
<input type="text" name="actor" size="30" maxlength="15" value="#Trim(actor)#"><!---文字列から先頭と末尾のスペースと制御文字を削除します--->
<br>
国：
<input type="text" name="company" size="20" maxlength="15" value="#Trim(company)#"><!---文字列から先頭と末尾のスペースと制御文字を削除します--->
<br>
<br>
<input type="submit" value="更新">
<input type="reset" value="リセット">
</form>

</body>
</html>

</cfoutput>
