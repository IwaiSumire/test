<cfparam  name="menuName" default="[balack]">
<cfparam  name="debug" default="false">

<cfswitch expression="#thisTag.executionMode#">
    <!---開始タグ--->
<cfcase value="start">
    
    <table border="1" cellpadding="0" cellspacing="2">
</cfcase>
<!---子タグ--->
<cfcase  value="inavtive">
   なにもしない
</cfcase>
<!---終了タグ--->
<cfcase  value="end">
    
    <tr bgcolor="silver">
        <td>
            <strong>
                <cfoutput>#attributes.menuName#</cfoutput>
            </strong>
        </td>
    </tr>

    <cfloop index="idx" from="1" to="#arrayLen(thisTag.assocAttribs)#">
        <cfset thisAttrib = thisTag.assocAttribs[idx]>
        <cfset itemName = thisAttrib.itemName>
        <cfset link = thisAttrib.link>
        <tr>
            <cfoutput>
                <td>
                    <a href="#link#" target="_blank">#itemName#</a>
                </td>
            </cfoutput>
        </tr>
    </cfloop>
    </table>
</cfcase>
</cfswitch>