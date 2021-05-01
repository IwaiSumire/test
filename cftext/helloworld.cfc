<cfcomponent>
    <cffunction  name="sayhello" output="false" returnType="string" access="private">
        <cfargument  name="yourname" required="true" type="string">
           <cfset aString = arguments.yourname & "さん、おはようございます">
        <cfreturn aString>
    </cffunction>
</cfcomponent>