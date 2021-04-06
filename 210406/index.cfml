<cfset session.chk = createUUID()>

<cfoutput>
<form action="send.cfm" method="post">
あなたのメールアドレスを入力してください<br>
<input type="text" name="mail" size="50"><br>
<input type="hidden" name="chk" value="#session.chk#"/>
 <input type="submit" value="send"/>
 </form>
 </cfoutput>

 <cfinclude template="test/210406/footer.cfm"/>