<cfcomponent>
    <cffunction  name="getComponentName" access="package" output="false" returntype="string">
        <cfset currenDir = getCurrentTemplatePath()>
        <cfreturn currenDir>
    </cffunction>
</cfcomponent>