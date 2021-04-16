<cfquery datasource="sample">
    delete from suggestion
    where suggestion_id = #suggestion_id#
</cfquery>

<cflocation  url="./top.cfm">