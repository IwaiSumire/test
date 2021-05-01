<cfcomponent>
    <cffunction  name="onMissisngMethod">
        <cfargument  name="missingMethodName" type="string">
        <cfargument  name="missingMethodNameArguments" type="struct">
        そのようなメソッドは存在しません
    </cffunction>

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

 
</cfcomponent>