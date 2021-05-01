<cfcomponent>
    <cfproperty  name="this.author" type="string">
    <cfproperty  name="author" type="string">


<cfscript>
    this.author = "岩井菫";
    author="佐々木希";
</cfscript>

<cffunction  name="getPublic" access="public" output="false" returntype="string">
    <cfreturn this.author>
</cffunction>

<cffunction  name="getPrivate" access="public" output="false" returntype="string">
    <cfreturn author>
</cffunction>


</cfcomponent>