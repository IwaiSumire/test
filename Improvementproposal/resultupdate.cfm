<cfdump var="#form#">
<cfquery datasource="sample">
     update suggestion
     set result_id = #result_id#
     where suggestion_id = #suggestion_id#
</cfquery>



<cflocation  url="./top.cfm"><!---リダイレクト--->
