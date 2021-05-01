<cfset myvar = "Adobe System">

<cfscript>
    function myFunction(firstName,LastName) {
        var myvar = "coldfusion8"

        retval = lastName & firstName;
        return retval;
    }
</cfscript>

<cfoutput>
    myfunctionを呼び出しています・・・・
    <strong>#myfunction("岩井","菫")#</strong>

    <strong>#myvar#</strong>
</cfoutput>

