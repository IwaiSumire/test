<html>
    <head>
        <title>ようこそ</title>
        <script>
        alert('ログインできました');


        </script>
    <head>

        <cfoutput>
            #cookie.uname#さんがログインしています。
        </cfoutput>

        <h2>サイト</h2>

        <h3>質問はこちらから</h3>

        <form action="posted.cfm" method="post" target="_top">
            質問タイトル：<input type="text" name="subject"><br>
            質問内容：<textarea name="question"  rows="4" cols="40"></textarea><br>

            <input type="hidden" name="name" value="<cfoutput>#cookie.uname#</cfoutput>">
            <input type="hidden" name="email" value="<cfoutput>#cookie.uemail#</cfoutput>">

            <input onclick="click()" type="submit" value="送信">

        </form>

</html>