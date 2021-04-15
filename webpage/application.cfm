<!---

<cfapplication name="secure" clientmanagement="yes" sessionmanagement="yes">
<!---clientmanagementsessionクライアント変数を有効にする--->
<!---sessionmanagementセッション変数を有効にする--->

<cfif not IsDefined("session.secureid") OR not IsDefined("cookie.uname")>
    <!---session.secureidセッション変数が見つからないか、cookieがなければ（ログインした履歴ない）--->
    <cflocation url="userlogin.cfm?badLogin=yes">
</cfif>

--->