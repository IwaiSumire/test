<cfcomponent>
    <cffunction  name="add" returntype="numeric" output="no" description="AddMath">
        <cfargument  name="first" type="numeric" reuired="no" default="0">
        <cfargument  name="second" type="numeric" reuired="no" default="0">
        <cfreturn round(first + second)>
    </cffunction>

    <cffunction  name="subtract" returntype="numeric" output="no" description="SubtractMath">
        <cfargument  name="first" type="numeric" reuired="no" default="0">
        <cfargument  name="second" type="numeric" reuired="no" default="0">
        <cfreturn round(first - second)>
    </cffunction>

    <cffunction  name="multiply" returntype="numeric" output="no" description="multiplyMath">
        <cfargument  name="first" type="numeric" reuired="no" default="0">
        <cfargument  name="second" type="numeric" reuired="no" default="0">
        <cfreturn round(first * second)>
    </cffunction>

    <cffunction  name="divide" returntype="numeric" output="no" description="divideMath">
        <cfargument  name="first" type="numeric" reuired="no" default="0">
        <cfargument  name="second" type="numeric" reuired="no" default="1">
        <cfreturn round(first / second)>
    </cffunction>
</cfcomponent>