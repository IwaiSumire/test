<cfscript>
    childObject = createObject("component", "child");
    metaData = getMetaData(childObject);
    componentName = childObject.getComponentName();
</cfscript>

<cfdump  var="#childObject#">
<cfdump  var="#metaData#">

<cfoutput>#componentName#
</cfoutput>