<html>
    <head>
        <title></title>
    </head>
    <body>
        <cfscript>
            function myFunction(firstName,lastName) {
                retval = lastName& firstName;
                return retval;
            }
        </cfscript>

        <cfoutput>
            #myFunction("岩井","菫")#
        </cfoutput>
    </body>
</html>