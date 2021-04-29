<cfparam name="param" default="">

<strong>

    <cfloop index="idx" from="1" to="#len(attributes.param)#">
        <cfoutput>
            #mid(attributes.param, idx, 1)#*
        </cfoutput>
        </cfloop>
    
</strong>