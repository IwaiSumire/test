<cffunction  name="dump" output="true">
    <cfargument  name="var" required="true">
    <cfargument  name="label" required="false" default="">
    <cfargument  name="expand" required="false" default="yes">

    <cfdump  var="#arguments.var#" label="#arguments.label#" expand="#arguments.expand#">
</cffunction> 
<cfscript>
    mystruct = structNew();
    mystruct.firstName = "岩井";
    mystruct.lastName = "菫";

    dump(mystruct);
</cfscript>
