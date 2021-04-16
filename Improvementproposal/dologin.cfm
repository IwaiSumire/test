
<cfif (form.login_id is "") or (form.login_pass is "")>
    <meta http-equiv="refresh" content="0;url=logintop.cfm?nullNotLogin=yes">
</cfif>
<cfquery datasource="sample" name="dologin">
select *
from employee
where '#form.login_id#' = login_id
and '#form.login_pass#' = login_pass
</cfquery>

<cfif dologin.employee_id is not ""><!---もし、idとpassが一致するものが見つからなければ--->

    <cfcookie name="clogin_id" value="#dologin.login_id#"><!---ログインidをcookieに保存--->
    <cfcookie name="cemployee_name" value="#dologin.employee_name#"><!---ログインidをcookieに保存--->
    <meta http-equiv="refresh" content="0;url=top.cfm"><!---ログインする→toppageに行く--->

</cfif>


<cfif dologin.recordcount EQ 0><!---EQは＝と一緒ね--->
    <meta http-equiv="refresh" content="0;url=logintop.cfm?badLogin=yes">
</cfif>
