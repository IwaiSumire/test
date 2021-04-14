<cfif (form.email is not "") and
      (form.userid is not"") and
      (form.password is not "")><!---全部入力済であれば--->

<cfquery datasource="sample" name="get_uname">
    select userid
    from users
    where userid='#form.userid#'
</cfquery>

<cfif get_uname.recordcount NEQ 0><!---usersに一致する登録がされていなければ（0じゃなければ）--->
    <cflocation  url="./sign_up.cfm?dup=yes">
    <cfelse>
        <cfinsert datasource="sample"  tablename="users"><!---検索結果が0件だったのでusersに登録する--->
        <cfmail  from="webmaster@example.com"  subject="登録完了"  to="#form.email#">
            会員登録ありがとうございます。
            あなたのパスワード：#form.password#
            よろしくお願いいたします。
        </cfmail>

        <html>
            <head><title>登録完了</title></head>
            <body>
                <center>
                <h3>会員登録ありがとうございました</h3>
                <spna>メールをご確認お願い致します。</spna>

                <a href="./userlogin.cfm" target="_top">ログインページへ</a>
                </center>
            </body>
        </html>


</cfif>

<cfelse><!---記入漏れがあったとき--->
    <cflocation  url="./sign_up.cfm?lack=yes">
</cfif>

