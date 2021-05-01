<cfcomponent>
    <cffunction  name="getName" access="remote" >
        <cfargument  name="firstName" type="string" required="true">
        <cfargument  name="lastName" type="string" required="true">
        <cfset retval="私の名前は#arguments.firstName##arguments.lastName#です。">
        <cfoutput>#retval#
        </cfoutput>
    </cffunction>
</cfcomponent>
