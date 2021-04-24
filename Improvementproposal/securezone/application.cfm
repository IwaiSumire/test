<!---

<cfapplication name="secure" clientmanagement="yes" sessionmanagement="Yes">
<!---clientmanagementsessionクライアント変数を有効にする--->
<!---sessionmanagementセッション変数を有効にする--->

<cfif not IsDefined("session.secureid") OR not IsDefined("cookie.uname")>
    <cflocation url="../prelog.cfm?=badLogin=yes">
</cfif>

--->
