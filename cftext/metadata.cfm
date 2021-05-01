<cfscript>
    metadata = getComponentMetadata("introspection");
</cfscript>

<cfdump  var="#metadata#">

<!---
<cfscript>
    objectProperty = createObject("component", "introspection")
    metadata = getMetadata(objectProperty)
</cfscript>
<cfdump  var="#metadata#" label="めた">

<cfoutput>
    #metadata.functions[1].name#
</cfoutput>
--->