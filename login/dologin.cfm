<cfquery datasource="sample" name="validateUser"><!---ログインしようとしたidとpassがあるか？--->
    select *
    from users
    where users.userid='#form.userid#'
    and users.password='#form.password#'
</cfquery>

<cfif validateUser.secureid is not ""><!---あったとき--->


    
    <cflock scope="session" timeout="10" type="EXCLUSIVE">
        <!---セッション変数にsecureidをセット---><!---EXCLUSIVE：排他的ロック--->
        <cfset session.secureid = validateUser.secureid>
        <!---セッションidはログインしようとしたsecureid--->
    </cflock>


    <!---一致したidがあったとき（0じゃなかったとき）--->
    <cfcookie name="uname" value="#validateUser.userid#"><!---unameには一致したusernameを入れる--->
    <meta http-equiv="refresh" content="0;url=securezone/logined.cfm"><!---0秒でloginedにリダイレクト--->
</cfif>

<cfif validateUser.recordcount EQ 0><!---EQは＝と一緒--->
    <meta http-equiv="refresh" content="0;url=prelog.cfm?badLogin=yes">
</cfif>