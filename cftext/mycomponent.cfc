<cfcomponent>
    <cffunction  name="getName" access="remote" returntype="string">
        <cfargument  name="firstName" type="string" required="true">
        <cfargument  name="lastName" type="string" required="true">
        <cfset retval = "">
        <cfset retval = "私の名前は#arguments.lastName##arguments.firstName#です。">
        <cfreturn retval>
    </cffunction>
</cfcomponent>  