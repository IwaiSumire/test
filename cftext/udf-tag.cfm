<html>
    <head>
        <title></title>
    </head>
    <body>
        <cffunction  name="myFunction">
            <cfargument  name="firstName" required="true">
            <cfargument  name="lastName" required="true">
            <cfset retval = lastName & firstName>
            <cfreturn retval>
        </cffunction>
        <cfoutput>
            #myFunction("岩井","菫")#
        </cfoutput>
    </body>
</html>