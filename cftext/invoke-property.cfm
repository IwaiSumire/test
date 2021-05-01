

<cfscript>
    propertyObject = createObject("component", "property");
    publicAuthor = propertyObject.getPublic();
    privateAuthor = propertyObject.getPrivate();
</cfscript>

<cfoutput>
    publicAuthor:#publicAuthor#<br>
    privateAuthor:#privateAuthor#<br>
</cfoutput>

<cfoutput>
    <div>
    propertyObject.authorの値は#propertyObject.author#
    </div>
</cfoutput>

<cfset propertyObject.author = "榮倉奈々">

<cfoutput>
    #propertyObject.author#
</cfoutput>