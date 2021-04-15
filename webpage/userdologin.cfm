<cfquery datasource="sample" name="validateUser">
    select *
    from users
    where users.userid='#form.userid#'
    and users.password='#form.password#'
</cfquery>

<cfif validateUser.secureid is not ""><!---secureidが空欄でなければ--->

    <!---
    <cflock scope="session" timeout="10" type="EXCLUSIVE">
        <!---セッション変数にsecureidをセット--->
        <cfset session.secureid = #validateUser.secureid#>
    </cflock>
--->

    <!---一致したidがあったとき（0じゃなかったとき）--->
    <cfcookie name="uname" value="#validateUser.userid#"><!---unameには一致したusernameを入れる--->
    <cfcookie name="uemail" value="#validateUser.email#">
    <meta http-equiv="refresh" content="0;url=musicplace.cfm"><!---0秒でloginedにリダイレクト--->
</cfif>

<cfif validateUser.recordcount EQ 0><!---EQは＝と一緒ね--->
    <meta http-equiv="refresh" content="0;url=userlogin.cfm?badLogin=yes">
</cfif>