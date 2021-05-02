<cfcomponent>
    <cffunction  name="syaHello" output="false" returntype="string" accsess="remote" returnFormat="json">
        <cfargument  name="yourName" required="true" type="string">
        <cfset greeting = arguments.yourName & "さん、おはようございます">
        <cfreturn greeting>
    </cffunction>
</cfcomponent>