

<cfapplication name="secure" clientmanagement="yes" sessionmanagement="yes">
<!---clientmanagementsessionクライアント変数を有効にする--->
<!---sessionmanagementセッション変数を有効にする--->

<cfif not IsDefined("session.secureid") OR not IsDefined("cookie.uname")>
    <cflocation url="../login/prelog.cfm?=badLogin=yes">
</cfif>

