<cfparam name="form.chk" default="">
 <cfset request.dir=GetDirectoryFromPath(GetCurrentTemplatePath())>
<cfoutput>
<cfif session.chk eq form.chk>
     <cfdirectory directory="#request.dir#" name="qry_dir">

     <cfmail to="#form.mail#" from="sys@utalab.net">
             subject="アメブロのcfmailのテストです">

   アメブロのcfmailのテストです。
   ColdFusionでメール送信は、このように簡単です。
   添付ファイルは、cfmailのテストをしたプログラムです。

         <cfloop query="qry_dir">
             <cfmailparam file="#request.dir#/#qry_dir.name#">
         </cfloop>
    </cfmail>
     メール送信しました。
 <cfelse>
     不正の処理を行いました。
 </cfif>
 </cfoutput>

<cfinclude template="footer.cfm" />