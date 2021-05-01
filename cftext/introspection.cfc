<cfcomponent>
    <cfproperty  name="author" type="string">
    <cfproperty  name="company" type="string">

    <cffunction  name="getMyMethod" access="public" output="false" returntype="string">
        <cfset retval = "このメソッドは文字列を返します">
    </cffunction>

    <cffunction  name="getYourMethod" access="public" output="false" returntype="string">
        <cfset retval = "このメソッドは～～～">
    </cffunction>
</cfcomponent>